/* FILTER.C - Filter Extension for PWB. Provides a new editing function
 * that replaces the text passed to it with text that has been run
 * through a user-selected filter program. For example, you can use the
 * DOS or OS/2 SORT command to sort blocks of text.
 *
 * To compile for DOS or OS/2:
 *
 *   cl /c /Lr /Gs /ACw filter.c
 *
 * To link for DOS:
 *
 *   link /NOI exthdr filter,filter.mxt;
 *
 * To link for OS/2:
 *
 *   link /NOI exthdrp filter,filter.pxt,,,ext.def;
 *
 * To load, put the following command in your TOOLS.INI (or execute with
 * the assign command):
 *
 *   load:[d:\path\]filter
 *
 * To use, mark the block of text you want to filter and invoke the
 * filter command with SHIFT+CTRL+F. The extension will prompt you for
 * the name of the filter program. You can change the filter program
 * by giving the new filter as a text argument:
 *
 *   ALT+A myfilter SHIFT+CTRL+F
 */

#include <stdlib.h>         // min macro
#include <string.h>         // String functions
#include <ext.h>

/* Prototypes */
PWBFUNC Filter( unsigned argData, ARG _far *pArg, flagType fMeta );
flagType DoSpawn( char *szCmd );
flagType _pascal EXTERNAL SetFilter( char _far *szCmd );

/* Global data */
PFILE   pFileFilt   = 0;                // Handle for filter file
char    *szNameFilt = "<filter-file>";  // Name of filter file
char    *szTemp1    = "filter1.tmp";    // Name of 1st temp file
char    *szTemp2    = "filter2.tmp";    // Name of 2nd temp file
char    filtcmd[BUFLEN] = "";           // Filter command
char    buf[BUFLEN];                    // Work buffer

/* Filter - Replaces seleted text with the same text after being
 * run through an arbitrary filter. Argument types accepted:
 *
 *  NOARG       - Filter entire current line
 *  NULLARG     - Filter current line, from cursor to end of line
 *  LINEARG     - Filter range of lines
 *  BOXARG      - Filter characters with the selected box
 *
 *  NUMARG      - Converted to LINEARG before extension is called.
 *  MARKARG     - Converted to Appropriate ARG form above
 *                before extension is called.
 *
 *  TEXTARG     - Set new filter command
 *
 * Return:  TRUE on successful file update, else FALSE
 *
 */
PWBFUNC Filter( unsigned argData, ARG far *pArg, flagType fMeta )
{
    int     cbLineMax;          // Max line length in filtered
    LINE    cLines;             // Count of lines in file
    LINE    iLineCur;           // Line being read
    PFILE   pFile;              // File handle of current file

    /* Get handle to current file and discard the contents of
     * the filter-file.
     */
    pFile = FileNameToHandle( "", "" );
    DelFile( pFileFilt );

    /* Handle the special case of a TEXTARG to set the name of the
     * filter command to be used. If no filter command is set, prompt
     * for one.
     */
    if( pArg->argType == TEXTARG )
    {
        SetFilter( pArg->arg.textarg.pText );
        return TRUE;
    } else if( *filtcmd == '\0' )
    {
        if( GetString( filtcmd, "Filter program to be used", FALSE ) )
            return FALSE;
    }

    /* Step 1, based on the argument type, copy the selected region into
     * the upper left-most position of filter-file.
     */
    switch( pArg->argType )
    {
        case NOARG:             // Filter entire line
            CopyLine( pFile,
                      pFileFilt,
                      pArg->arg.noarg.y,
                      pArg->arg.noarg.y,
                      (LINE)0 );
            break;

        case NULLARG:           // Filter to end of line
            CopyStream( pFile,
                        pFileFilt,
                        pArg->arg.nullarg.x,
                        pArg->arg.nullarg.y,
                        255,
                        pArg->arg.nullarg.y,
                        (COL)0,
                        (LINE)0 );
            break;

        case LINEARG:           // Filter line range
            CopyLine( pFile,
                      pFileFilt,
                      pArg->arg.linearg.yStart,
                      pArg->arg.linearg.yEnd,
                      (LINE)0 );
            break;

        case BOXARG:            // Filter box
            CopyBox( pFile,
                     pFileFilt,
                     pArg->arg.boxarg.xLeft,
                     pArg->arg.boxarg.yTop,
                     pArg->arg.boxarg.xRight,
                     pArg->arg.boxarg.yBottom,
                     (COL)0,
                     (LINE)0 );
            break;

    }

    /* Step 2, write the selected text to disk. */
    if( !FileWrite( szTemp1, pFileFilt ) )
    {
        DoMessage( "** Error writing temporary file **" );
        return FALSE;
    }

    /* Step 3, create the command to be executed:
     *   filtercommand + " < " + tempname1 + " >" + tempname2
     * Then perform the filter operation on that file, creating a second
     * temporary file.
     */
    strcpy( buf, filtcmd );
    strcat( buf, " < " );
    strcat( buf, szTemp1 );
    strcat( buf, " > " );
    strcat( buf, szTemp2 );
    if( !DoSpawn( buf ) )
    {
        DoMessage( "** Error executing filter **" );
        return FALSE;
    }

    /* Step 4, delete the contents of the filter-file, and replace it
     * by reading in the contents of that second temp file.
     */
    DelFile( pFileFilt );
    if( !FileRead( szTemp2, pFileFilt ) )
    {
        DoMessage( "Error reading temporary file **" );
        return FALSE;
    }

    /* Step 5, calculate the maximum width of the data we got back
     * from the filter. Then, based again on the type of region selected
     * by the user, DISCARD the users select region, and copy in the
     * contents of the filter file in an equivelant type.
     */
    cLines = FileLength( pFileFilt );
    cbLineMax = 0;
    for( iLineCur = 0; iLineCur < cLines; iLineCur++ )
        cbLineMax = max( cbLineMax, GetLine( iLineCur, buf, pFileFilt ) );

    switch( pArg->argType)
    {
        case NOARG:             // Filter entire line
            DelLine( pFile,
                     pArg->arg.noarg.y,
                     pArg->arg.noarg.y );
            CopyLine( pFileFilt, pFile,
                      (LINE)0,
                      (LINE)0,
                      pArg->arg.noarg.y );
            break;

        case NULLARG:           // filter to end of line
            DelStream( pFile,
                       pArg->arg.nullarg.x,
                       pArg->arg.nullarg.y,
                       255,
                       pArg->arg.nullarg.y );
            CopyStream( pFileFilt,
                        pFile,
                        (COL)0,
                        (LINE)0,
                        cbLineMax,
                        (LINE)0,
                        pArg->arg.nullarg.x,
                        pArg->arg.nullarg.y );
            break;

        case LINEARG:           // Filter line range
            DelLine( pFile,
                     pArg->arg.linearg.yStart,
                     pArg->arg.linearg.yEnd );
            CopyLine( pFileFilt,
                      pFile,
                      (LINE)0,
                      cLines-1,
                      pArg->arg.linearg.yStart );
            break;

        case BOXARG:            // Filter box
            DelBox( pFile,
                    pArg->arg.boxarg.xLeft,
                    pArg->arg.boxarg.yTop,
                    pArg->arg.boxarg.xRight,
                    pArg->arg.boxarg.yBottom );
            CopyBox( pFileFilt,
                     pFile,
                     (COL)0,
                     (LINE)0,
                     cbLineMax-1,
                     cLines-1,
                     pArg->arg.boxarg.xLeft,
                     pArg->arg.boxarg.yTop );
            break;
    }

    /* Clean-up: delete the temporary files we've created */
    strcpy( buf, "DEL " );
    strcat( buf, szTemp1 );
    DoSpawn( buf );
    strcpy( buf + 4, szTemp2 );
    DoSpawn( buf );

    return TRUE;
}

/* DoSpawn - Executes an OS/2 or DOS command by sending a string to
 * to OS/2 or DOS for execution.
 *
 * Params:  szCmd - command string to be executed
 *
 * Return:  TRUE if successfull, else FALSE.
 */
flagType DoSpawn( char *szCmd )
{
    char   cmd[BUFLEN];

    strcpy( cmd, "arg \"" );
    strcat( cmd, szCmd );
    strcat( cmd, "\" shell" );
    return fExecute( cmd );

}

/* SetFilter - Sets the filter program to be used
 *
 * Purpose:
 *  Save the passed string paramater as the filter command to be used by the
 *  filter function. Called either because the "filtcmd:" switch has been
 *  set, or because the filter command recieved a TEXTARG.
 *
 * Params: szCmd - filter program string
 *
 * Return: TRUE
 *
 */
flagType _pascal EXTERNAL SetFilter( char _far *szCmd )
{
    strcpy( filtcmd, szCmd );
    return TRUE;
}

/* WhenLoaded - Initializes extension data.
 *
 *  Identify self, create <filter-file>, and assign default keystroke.
 */
void EXTERNAL WhenLoaded()
{
    pFileFilt = FileNameToHandle( szNameFilt, szNameFilt );
    if( !pFileFilt )
    {
        pFileFilt = AddFile( szNameFilt );
        FileRead( szNameFilt, pFileFilt );
    }
    SetKey( "filter", "shift+ctrl+f" );
    DoMessage( "Text filter extension" );
}

/* New switch: filtcmd */
struct swiDesc swiTable[] =
{
    { "filtcmd",    toPIF( SetFilter ), SWI_SPECIAL },
    { NULL,         NULL,               0 }
};

/* New editor command: filter */
struct cmdDesc cmdTable[] =
{
    { "filter", Filter, 0,  KEEPMETA | NOARG | BOXARG | NULLARG | LINEARG |
                            MARKARG | NUMARG | TEXTARG | MODIFIES },
    { NULL,     NULL,   0,  0 }
};
