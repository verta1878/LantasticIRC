/* INCLUDE.C - A PWB extension to automatically open include files.
 *
 * To compile for DOS or OS/2:
 *
 *   cl /c /Lr /Gs /ACw include.c
 *
 * To link for DOS:
 *
 *   link /NOI exthdr include,include.mxt;
 *
 * To link for OS/2:
 *
 *   link /NOI exthdrp include,include.pxt,,,ext.def;
 *
 * To load, put the following command in your TOOLS.INI (or execute with
 * the assign command):
 *
 *   load:[d:\path\]include
 *
 * To use:
 *
 *   - Place cursor on an include line and select function with
 *     key (default SHIFT+CTRL+I) or item from View menu. Function will
 *     recognize any valid C, Assembler, FORTRAN, BASIC, or Microsoft
 *     Pascal Compiler (but not QuickPascal) include line and open the
 *     specified include file.
 *
 *   - Place cursor on non-include line and select function. You will
 *     be prompted for an include file.
 *
 *   - Type "ALT+A filename SHIFT+CTRL+I" to open a specific file.
 *
 * The function searches in the current directory and in the INCLUDE
 * directory to find the file.
 */

#include <string.h>
#include <ext.h>

/* Function prototypes. */
PWBFUNC Include( unsigned argData, ARG _far *pArg, flagType fMeta );
void searchenv( char *pchName, char *pchEnviron, char *pchPathBuf );
int  Exist( char _far *achName );
void pascal EXPORT Dummy( char *ach );

PWBFUNC Include( unsigned argData, ARG _far *pArg, flagType fMeta )
{
    LINE    y;
    PFILE   pFile;
    static  char    achSpec[BUFLEN], achName[BUFLEN] = "";
    static  char    szDelimit[] = " \t\"'<>:()";    // Any language
    char    *pchToken;

    if( pArg->argType == TEXTARG )
        strcpy( achName, pArg->arg.textarg.pText );
    else
    {
        /* Get current file handle and current line. */
        pFile = FileNameToHandle( "", "" );
        y = pArg->arg.noarg.y;
        GetLine( y, achSpec, pFile );

        /* Make uppercase copy and check to see if it is an include line. */
        strupr( achSpec );
        if( !(pchToken = strstr( achSpec, "INCLUDE" )) )
        {
            /* Not an include line, so prompt for file name. */
            if( GetString( achName, "Enter include file name:", TRUE ) )
                return TRUE;
        }
        else
        {
            /* Next token after INCLUDE should be file name. */
            pchToken = strtok( pchToken, szDelimit );
            pchToken = strtok( NULL, szDelimit );
            strcpy( achName, pchToken );
        }
    }
    strcpy( achSpec, achName );

    /* Set file name if it exists in current or include directory. */
    if( !Exist( achName ) )
    {
        searchenv( achName, "INCLUDE", achSpec );
        if( achSpec[0] == '\0' )
        {
            strcat( strcpy( achName, "Can't find include file: " ) , achSpec );
            DoMessage( achName );
            return TRUE;
        }
    }
    DoMessage( achName );

    /* Open file and make it the current file. */
    if( (pFile = FileNameToHandle( achSpec, NULL )) == PNULL )
    {
        pFile = AddFile( achSpec );
        FileRead( achSpec, pFile );
    }
    pFileToTop( pFile );
    Display();
    return TRUE;
}

/* PWB replacement for C _searchenv */
void searchenv( char *pchName, char *pchEnviron, char *pchPathBuf )
{
    char achT[BUFLEN], *pchToken;
    int  result;

    /* Get the environment string and loop through it, checking
     * each directory to see if the file exists in it.
     */
    strcpy( achT, mgetenv( pchEnviron ) );
    pchToken = strtok( achT, ";");
    do
    {
        strcpy( pchPathBuf, pchToken );
        strcat( strcat( pchPathBuf, "\\" ), pchName );
        result = Exist( pchPathBuf );
        pchToken = strtok( NULL, ";" );
    } while( (!result) && (pchToken != NULL) );

    if( !result )
        pchPathBuf[0] = '\0';
}

/* Testing for existence of a file must be done indirectly by using
 * ForFile, which returns an error for a file that doesn't exist.
 */
int Exist( char _far *achName )
{
    return ForFile( achName, FORFILE_ALL, Dummy );
}

/* ForFile must call something, thus this dummy function. */
void pascal EXPORT Dummy( char *ach )
{
}

/* Initialize command key. */
void EXTERNAL WhenLoaded()
{
    /* Add separator bar and Include item to View menu. */
    AddMenuItem( MID_VIEW, "-", "", "", "" );
    AddMenuItem( MID_VIEW, "Include", "Include File",
                                      "", "include" );
    SetKey( "include", "shift+ctrl+i" );
    DoMessage( "Loaded INCLUDE" );
    return;
}

/* No new switches. */
struct swiDesc swiTable[]=
{
    { NULL,     NULL,   0 }
};

/* New command: include */
struct cmdDesc cmdTable[] =
{
    { "include", Include, 0, NOARG | TEXTARG | NULLEOW | BOXSTR },
    { NULL,      NULL,    0, 0 }
};
