/* TXTFMT.C contains several new editor functions related to text
 * formatting. They include:
 *
 *  ucase       Uppercases text
 *  lcase       Lowercases text
 *  tcase       Toggles case of text
 *  ptab        Inserting tab that can handle variable-space tabs
 *  mtab        Corresponding backtab
 *  justify     Justifies text paragraphs
 *  CenterLine  Centers a line of text (from Advanced Programming
 *              Techniques manual)
 *
 * To compile for DOS or OS/2:
 *
 *   cl /c /Lr /Gs /ACw txtfmt.c
 *
 * To link for DOS:
 *
 *   link /NOI exthdr txtfmt,txtfmt.mxt;
 *
 * To link for OS/2:
 *
 *   link /NOI exthdrp txtfmt,txtfmt.pxt,,,ext.def;
 *
 * To load, put the following command in your TOOLS.INI (or execute with
 * the assign command):
 *
 *   load:[d:\path\]txtfmt
 *
 * Documentation for each command is given in the function headers.
 */

#include <string.h>
#include <stdlib.h>
#include <ext.h>

/* Function prototypes, starting with new commands */
PWBFUNC SetTabMask( char far *mask );
PWBFUNC ucase( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC lcase( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC tcase( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC ptab( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC mtab( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC justify( unsigned argData, ARG far *pArg, flagType fMeta );
PWBFUNC CenterLine( unsigned argData, ARG _far *pArg, flagType fMeta );

/* Internal functions used by commands */
flagType ulcase( ARG far *pArg, int fAction );
void     DumpLine( char far *, PFILE, COL, COL, LINE, char far *, int );
int      NextLine( char far *, PFILE, LINE, LINE );
void     GetMinLine( LINE y, COL xMin, char *pch, PFILE pFile );

/* Constant */
#define MAXCOL  32765
#define STARTTABMASK 10

/* Global variables for switches - initialized to default values,
 * but switch overrides.
 */
flagType j2space = FALSE;
int jmargin = 70;
int cTab = 8;
char achTabMask[81] =
{
"----+--T-1----+T---2---T+----3-T--+----T----+--T-5----+T---6---T+----7-T--+-"
};

/* New switches. */
struct swiDesc swiTable[] =
{
    { "j2space",    toPIF( j2space ),    SWI_BOOLEAN },
    { "jmargin",    toPIF( jmargin ),    SWI_NUMERIC | RADIX10 },
    { "tabmask",    toPIF( SetTabMask ), SWI_SPECIAL },
    { NULL,         NULL,                0 }
};

/* New commands. */
struct cmdDesc cmdTable[] =
{
    { "ptab",    ptab,    0, KEEPMETA | NOARG | LINEARG | NULLARG | BOXARG },
    { "mtab",    mtab,    0, KEEPMETA | NOARG | LINEARG | NULLARG | BOXARG },
    { "ucase",   ucase,   0, KEEPMETA | NOARG | LINEARG | NULLARG | BOXARG },
    { "lcase",   lcase,   0, KEEPMETA | NOARG | LINEARG | NULLARG | BOXARG },
    { "tcase",   tcase,   0, KEEPMETA | NOARG | LINEARG | NULLARG | BOXARG },
    { "justify", justify, 0, TEXTARG  | NOARG | LINEARG | NULLARG | BOXARG },
    { "CenterLine", CenterLine, 0, NOARG | LINEARG },
    { NULL,      NULL,    0, 0 }
};

/* Initialize tab mask. */
PWBFUNC SetTabMask( char far *mask )
{
    strcpy( achTabMask, mask );
    return TRUE;
}

/* Initializations and commands to be performed when extension is loaded. */
void EXTERNAL WhenLoaded()
{
    SetKey( "tcase",      "alt+x" );
    SetKey( "justify",    "alt+j" );
    SetKey( "CenterLine", "alt+c" );
    SetKey( "ptab",       "ctrl+i" );
    return;
}

/* ptab - New tab function for variable or regular tabs. Can push text
 * over to the new tab position. The function handles various argument
 * types:
 *
 *      ptab                Moves to next tab stop
 *      arg ptab            Pushes text from cursor to next tab stop
 *      arg boxarg ptab     Pushes all lines in box from cursor to next
 *                          tab stop
 *      arg linearg ptab    Pushes all marked lines from left margin to
 *                          next tab stop
 *
 * You can press arg multiple times to push text over multiple tab stops.
 *
 * If the Tabstops switch value is 10 or less, tabstops are handled
 * normally. If larger, variable tabs as defined in the tabmask switch
 * are used. The tab mask switch is a string in which Ts represent
 * tab positions and other characters are ignored.
 */
PWBFUNC ptab( unsigned argData, ARG far *pArg, flagType fMeta )
{
    PFILE   pFile;
    LINE    yStart, yEnd, yT;
    COL     xStart, xTab, xT;
    PSWI    pswi;
    int     c, cT, fInsert;

    /* Get switch value for "tabstops" and assign to variables. */
    pswi = FindSwitch( "tabstops" );
    cTab = *(pswi->act.ival);

    pFile = FileNameToHandle( "", "" );

    switch( pArg->argType )
    {
        case NOARG:     // Move from cursor
            c = 1;
            fInsert = FALSE;
            yEnd   = yStart = pArg->arg.noarg.y;
            xStart = pArg->arg.noarg.x;
            break;

        case NULLARG:   // Push from cursor
            c = 1;
            fInsert = TRUE;
            yEnd   = yStart = pArg->arg.nullarg.y;
            xStart = pArg->arg.nullarg.x;
            break;

        case BOXARG:    // Push block from cursor
            c = pArg->arg.boxarg.cArg - 1;
            fInsert = TRUE;
            yStart = pArg->arg.boxarg.yTop;
            yEnd   = pArg->arg.boxarg.yBottom;
            xStart = pArg->arg.boxarg.xLeft;
            break;

        case LINEARG:   // Push block from start of line
            fInsert = TRUE;
            c = pArg->arg.linearg.cArg - 1;
            yStart = pArg->arg.linearg.yStart;
            yEnd   = pArg->arg.linearg.yEnd;
            xStart = 0;
            break;
    }

    /* If a tab size is defined, calculate the next tab position.
     * If size is greater than STARTTABMASK, find the next tab position
     * in the tab mask. For line and block arguments, do this as many
     * times as arg was pressed.
     */
    if( cTab <= STARTTABMASK )
        xTab = xStart + (c * cTab) - (xStart % cTab);
    else {
        xT = xStart;
        for( cT = 1; cT <= c; cT++ )
        {
            while( achTabMask[++xT] != 'T' )    // Skip to next 'T'
            {
                if( !achTabMask[xT] )
                {
                    xT = xStart;                // Restore if end of mask
                    break;
                }
            }
        }
        xTab = xT;
    }

    /* If arg pressed, slide text over. Otherwise, just move cursor over. */
    if( fInsert || (yEnd > yStart) )
    {
        for( yT = yStart; yT <= yEnd; yT++ )
        {
            for( xT = xStart; xT < xTab; xT++ )
            {
                Replace( ' ', xT, yT, pFile, TRUE );
            }
        }
    }
    MoveCur( xTab, yStart );

    return TRUE;
}

/* mtab - New tab function for variable or regular tabs. can pull text
 * back to the previous tab position. The function handles various
 * argument types:
 *
 *      mtab                Moves to last tab stop
 *      arg mtab            Pulls text from cursor to last tab stop
 *      arg boxarg mtab     Pulls all lines in box from cursor to last
 *                          tab stop
 *      arg linearg mtab    Same as boxarg
 *
 * Uses same tabmask as ptab if the Tabstops switch value is 10 or less.
 */
PWBFUNC mtab( unsigned argData, ARG far *pArg, flagType fMeta )
{
    PFILE   pFile;
    LINE    yStart, yEnd, yT;
    COL     xStart, xTab, xT;
    char    buf[BUFLEN];
    PSWI    pswi;

    /* Get switch values and assign to globals. */
    pswi = FindSwitch( "tabstops" );
    cTab = *(pswi->act.ival);

    pFile = FileNameToHandle( "", "" );

    switch( pArg->argType )
    {
        case NOARG:             /* Move cursor back one tab position */
            yEnd = yStart = pArg->arg.noarg.y;
            xStart = pArg->arg.noarg.x;
            break;

        case NULLARG:           /* Move line back one tab position   */
            yEnd = yStart = pArg->arg.nullarg.y;
            xStart = pArg->arg.nullarg.x;
            break;

        case LINEARG:           /* Move block back one tab position  */
            yStart = pArg->arg.linearg.yStart;
            yEnd = pArg->arg.linearg.yEnd;
            GetCursor( &xStart, &yT );
            break;

        case BOXARG:            /* Move block back one tab position  */
            yStart = pArg->arg.boxarg.yTop;
            yEnd = pArg->arg.boxarg.yBottom;
            xStart = pArg->arg.boxarg.xLeft;
            break;
    }

    /* If a tab size is defined, calculate the last tab position.
     * If size is 0, find the last tab position in the tab mask.
     */
    if( cTab <= STARTTABMASK )
    {
        xTab = xStart - (xStart % cTab);
        if (xTab && (xTab == xStart))
            xTab -= cTab;
    }
    else
    {
        xT = xStart;
        while( xT && achTabMask[--xT] != 'T' )  // Skip to last 'T'
        {
            if (!achTabMask[xT])
            {
                xT = xStart;                    // Restore if end of mask
                break;
            }
        }
        xTab = xT;
    }

    /* Slide everthing back to the last tab, but check to make sure
     * nothing is overwritten. If no arg, just move cursor back.
     */
    if( pArg->argType != NOARG )
    {
        yT = yStart;
        do
        {
            GetLine( yT, buf, pFile );
            for( xT = xStart; (xT > xTab) && (buf[xT - 1] == ' '); xT-- )
                ;
            DelStream( pFile, xT, yT, xStart, yT );
            ++yT;
        } while( yT <= yEnd );
    }
    MoveCur( xTab, yStart );

    return TRUE;
}

/* ucase, lcase, and tcase - Functions to uppercase, lowercase, or
 * toggle text. Handles different arguments:
 *
 *   xcase              Changes case of cursor character
 *   arg xcase          Changes case to end of word
 *   arg arg xcase      Changes case to end of line
 *   arg linearg xcase  Changes case of lines
 *   arg boxarg xcase   Changes case of box
 *
 * Assign your favorite, or all three.
 */

enum cases { UPPER, LOWER, TOGGLE };

PWBFUNC ucase( unsigned argData, ARG far *pArg, flagType fMeta )
{
    return ulcase( pArg, UPPER );
}

/* Convert arg to lower case.
 */
PWBFUNC lcase( unsigned argData, ARG far *pArg, flagType fMeta )
{
    return ulcase( pArg, LOWER );
}

/* Toggle case of arg.
 */
PWBFUNC tcase( unsigned argData, ARG far *pArg, flagType fMeta )
{
    return ulcase( pArg, TOGGLE );
}

/* Change case: toggle, upper, lower.
 */
flagType ulcase( ARG far *pArg, int fAction )
{
    PFILE   pFile;
    COL     xStart, xEnd, xT;
    LINE    yStart, yEnd;
    int     i;
    char    buf[BUFLEN];

    pFile = FileNameToHandle( "", "" );

    switch( pArg->argType )
    {
        case NOARG:                 /* Switch case at cursor */
            xStart = xEnd = pArg->arg.noarg.x;
            yStart = yEnd = pArg->arg.noarg.y;
            MoveCur( xStart + 1, yStart );
            break;

        case NULLARG:               /* One arg: switch case to end of word  */
            if( pArg->arg.nullarg.cArg == 1 )
            {
                xStart = pArg->arg.nullarg.x;
                yStart = pArg->arg.nullarg.y;
                fExecute( "pword" );
                GetCursor( &xEnd, &yEnd );
                if( yEnd > yStart )
                {
                    --yEnd;
                    xEnd = MAXCOL;
                } else
                    xEnd--;
                break;
            } else {                /* Two args: switch case to end of line */
                xStart = pArg->arg.nullarg.x;
                xEnd = MAXCOL;
                yStart = yEnd = pArg->arg.nullarg.y;
                break;
            }


        case LINEARG:               /* Switch case of line range */
            xStart = 0;
            xEnd = MAXCOL;
            yStart = pArg->arg.linearg.yStart;
            yEnd = pArg->arg.linearg.yEnd;
            break;

        case BOXARG:                /* Switch case of box  */
            xStart = pArg->arg.boxarg.xLeft;
            xEnd   = pArg->arg.boxarg.xRight;
            yStart = pArg->arg.boxarg.yTop;
            yEnd   = pArg->arg.boxarg.yBottom;
            break;
    }

    /* Get each line. Convert case from starting to ending column.
     * Put modified line back in file.
     */
    while( yStart <= yEnd )
    {
        i = GetLine( yStart, buf, pFile );
        xT = xStart;
        while( (xT <= i) && (xT <= xEnd) )
        {
            switch( fAction )
            {
                case TOGGLE:
                    if( buf[xT] >= 'A' && buf[xT] <= 'Z' )
                    {
                        buf[xT] += 'a' - 'A';   /* Convert to lower      */
                        break;                  /* else fall through     */
                    }
                case UPPER:
                    if( buf[xT] >= 'a' && buf[xT] <= 'z' )
                        buf[xT] += 'A' - 'a';   /* Convert to upper      */
                    break;
                case LOWER:
                    if( buf[xT] >= 'A' && buf[xT] <= 'Z' )
                        buf[xT] += 'a' - 'A';   /* Convert to lower      */
                    break;
            }
            xT++;
        }
        PutLine( yStart++, buf, pFile );
    }

    return TRUE;
}


/* justify - Justifies paragraphs. Handles variout arguments:
 *
 * justify              Justify between first nonspace column and jmargin,
 *                      from the current line to blank line.
 *
 * arg justify          Justify between current column and jmargin, from
 *                      the current line to blank line.
 *
 * arg linearg justify  Justify the specified lines between column 0 and
 *                      jmargin.
 *
 * arg boxarg justify   Justify the specified rows between the specified
 *                      columns the specified rows.
 *
 * arg textarg justify  Justify between columns 0 and jmargin, from the
 *                      current line to blank line, prepending each
 *                      resulting line with the textarg. This is useful
 *                      for justifying comment blocks preceded by *'s.
 */
PWBFUNC justify( unsigned argData, ARG far *pArg, flagType fMeta )
{
    static  char    inbuf[512]; // Input buffer
    PFILE   pFile;              // File handle
    char far *pText;            // Pointer to prepending text
    COL     x1, x2;             // Justify to right/left column
    LINE    y1, y2, yOut;       // Start/end/output line
    char    buf[BUFLEN];
    int     i;
    PSWI    pswi;

    pFile = FileNameToHandle( "", "" );

    switch( pArg->argType )
    {
        case NOARG:                         // Justify paragraph
            y1 = pArg->arg.noarg.y;         // from current line...
            y2 = -1;                        //  ...to blank line
            i = GetLine( y1, buf, pFile );
            for( x1 = 0; (buf[x1] == ' ') && (x1 < i); x1++ )
                ;                           // from first nonspace to
            x2 = jmargin;                   //  ...jmargin
            pText = 0;                      // There is no text
            break;

        case NULLARG:                       // Justify indented
            x1 = pArg->arg.nullarg.x;       // between cur col...
            x2 = jmargin;                   //  ...and jmargin
            y1 = pArg->arg.nullarg.y;       // current line...
            y2 = -1;                        //  ...to blank line
            pText = 0;                      // There is no text
            break;

        case LINEARG:                       // Justify line range
            x1 = 0;                         // between cols 0...
            x2 = jmargin;                   //  ...and jmargin
            y1 = pArg->arg.linearg.yStart;  // and range of lines
            y2 = pArg->arg.linearg.yEnd;
            pText = 0;                      // There is no text
            break;

        case BOXARG:                        // Justify box
            x1 = pArg->arg.boxarg.xLeft;    // from left corner...
            x2 = pArg->arg.boxarg.xRight;   //      ...to right
            y1 = pArg->arg.boxarg.yTop;     // from top...
            y2 = pArg->arg.boxarg.yBottom;  //     ...to bottom
            pText = 0;                      // There is no text
            break;

        case TEXTARG:                       // Justify and prepend
            x1 = 0;                         // between 0...
            x2 = jmargin;                   //    ...and jmargin
            y1 = pArg->arg.textarg.y;       // current line...
            y2 = -1;                        //     ...to blank line
            pText = pArg->arg.textarg.pText;// There IS text
            break;
    }

    if( y1 == y2 )                          // If same line, then
        y2 = -1;                            // just to blank line

    if( x1 == x2 )                          // If same column
        x2 = jmargin;                       // then just to default

    if( x2 < x1 )                           // If bas-ackwards
    {
        x1 = 0;                             // revert to default
        x2 = jmargin;
    }

    /* While we can get data within the specified limits, format
     * each new line and output back to the file.
     */
    inbuf[0] = 0;
    yOut = y1;                              // Line being output
    while( NextLine(inbuf,pFile,y1,y2 ) )   // While data to get
    {
        if( y2 != -1 )
            y2--;                           // End moves with deletion
        while( strlen( inbuf ) > (x2 - x1) )// While data to output
        {
            y1++;                           // Line moves with insert
            if( y2 != -1 )
                y2++;
            DumpLine(inbuf,pFile,x1,x2,yOut++,pText,fMeta );
        }
    }
    /* Dump any partial last line. Then if we were formatting to
     * a blank line, dump out one of those too.
     */
    if( strlen( inbuf ) > 0 )               // Dump last line
        DumpLine( inbuf, pFile, x1, x2, yOut++, pText, 0 );
    if( y2 == -1 )                          // Dump blank line
        DumpLine( "", pFile, x1, x2, yOut++, pText, 0 );
    return TRUE;
}

/* NextLine - Get next line from file. Like GetLine, except removes
 * leading and trailing spaces.
 */

int NextLine( char   far *pBuf,     // Input buffer
              PFILE  pFile,         // File pointer
              LINE   y1,            // Line # to read
              LINE   y2 )           // Line # to stop at
{
    char    far *pT;                // Working pointer
    int     rv;                     // Return value
    char    achWork[512];           // Working buffer

    achWork[0] = 0;
    rv = 0;
    if( (y2 == -1) || (y1 <= y2) )
    {
        rv = GetLine(y1, achWork, pFile );       // Get a line
        DelLine(pFile, y1, y1 );                 // Remove it
    }

    /* If there was data, strip leading spaces in newly input line. */
    if( rv )
    {
        pT = achWork;                            // Point into line
        while( *pT == ' ' )
            pT++;                                // Skip leading spaces

        /* If existing buffer is non-empty, append a space and set
         * pointer to end.
         */
        if( strlen(pBuf ) )                      // If non-null string
        {
            pBuf += strlen( pBuf );              // point to null
            *pBuf++ = ' ';                       // Append space
            if( j2space & ( *(pBuf - 2) == '.') )// If period...
                *pBuf++ = ' ';                   // append another
        }

        /* Append new line, but compress multiple spaces into one. */
        while( *pT )                             // Copy line over
        {
            if( j2space & (*pT == '.') )         // If period...
                if( *(pT + 1) == ' ' )           //   ...space
                {
                    *pBuf++ = *pT++;             // Copy period
                    *pBuf++ = *pT;               // Copy space
                }
            if( (*pBuf++ = *pT++) == ' ' )       // Copy a char
                while( *pT == ' ' )
                    pT++;                        // Skip multiple spaces
        }
        if( *(pBuf-1) == ' ' )                   // If a trailing space
            pBuf--;                              // Remove it
        *pBuf = 0;
    }

    return rv;
}

/* DumpLine - Dump one line of text to the file. Prepend any required
 * text or spaces, and perform word break/cut at right hand column.
 */
void DumpLine( char     far *pBuf,              // Data to output
               PFILE    pFile,                  // File to output to
               COL      x1,                     // Left-hand column
               COL      x2,                     // Right-hand column
               LINE     yOut,                   // Line to output to
               char     far *pText,             // Text to prepend
               int      fFlush )                // Flush both sides
{
    int     i;
    char    far *pT;
    char    far *pT2;
    char    achWork[512];                       // Working buffer
    char    achFlush[512];                      // Working buffer
    char    fSpace;                             // Space seen flag

    /* Start by prepending any text, and then filling out
     * to the left hand column to justify to.
     */
    achWork[0] = 0;                             // Start with null
    if( pText )
        strcpy( achWork, pText );               // If starting with text
    i = strlen( achWork );                      // length of line-so-far
    while( i++ < x1 )
        strcat( achWork, " " );                 // Fill out with spaces

    /* Append the data to be output, and then starting at the right
     * column, scan back for a space to break at. If one is not
     * found before the left hand column, then break at the right
     * hand column. Copy any line left over back to the passed in
     * buffer.
     */
    strcat( achWork, pBuf );                    // Get total line
    *pBuf = 0;                                  // Empty input buffer
    if( strlen( achWork ) > x2 )                // If we need to cut
    {

        pT = &achWork[x2];                      // Point at potential cut
        while( (pT > (char far *)&achWork[0]) && (*pT != ' ') )
            pT--;                               // Back up to space

        if( pT <= (char far *)&achWork[x1] )    // If none found in range
        {
            strcpy( pBuf, &achWork[x2] );       // copy remainder of line
            achWork[x2] = 0;                    // and terminate this one
        }
        else
        {
            while( *++pT == ' ' );              // Skip leading spaces
                strcpy( pBuf, pT );             // Copy remainder of line
            *pT = 0;                            // and terminate this one
        }
    }

    /* This code is invoked when the user wants to justify both
     * right and left sides of his text. We determine how many
     * spaces we need to add, and scan through and add one space
     * to each run of spaces until we've added enough
     */
    if( fFlush )                                // Right & left justify?
    {
        while( (i = x2 - strlen( achWork )) > 0 )// Count of spaces to add
        {
            strcpy( achFlush, achWork );        // Start with unmodified
            pT = achWork + x1;
            pT2 = achFlush + x1;                // Skip fixed part
            fSpace = FALSE;                     // Assume no spaces
            while( *pT )                        // While data to copy
            {
                if( (*pT == ' ') && i )         // Time to insert a space
                {
                    fSpace = TRUE;              // We've seen a space
                    *pT2++ = ' ';
                    i--;
                    while( *pT == ' ' )
                        *pT2++ = *pT++;         // Copy run of spaces
                }
                if( *pT )
                    *pT2++ = *pT++;             // Copy line
                if( (*pT == 0) && !fSpace)
                    break;                      // No embedded spaces
            }
            *pT2 = 0;
            strcpy( achWork, achFlush );        // Copy back
        }
    }

    /* Create new line and output it. */
    CopyLine( (PFILE) NULL, pFile, yOut, yOut, yOut );
    PutLine( yOut, achWork, pFile );
}


#define LINE_LENGTH 80      // Assumes 80-column screen

/* CenterLine - Centers a line or sequence of lines. Handles two argument
 * types:
 *
 * CenterLine               Centers the current line in 80-column field
 * arg linearg CenterLine   Centers the range of lines in 80-column field
 *
 * This is the same same example contained in the Advanced Programming
 * Techniques manual.
 */
PWBFUNC CenterLine( unsigned argData, ARG _far *pArg, flagType fMeta )
{
    PFILE pFile;
    LINE  yStart, yEnd;
    int   len;
    char *pBuf, buf[BUFLEN];

    /* Get a handle to the current file */
    pFile = FileNameToHandle( "", "" );

    /* Handle various argument types */
    switch( pArg->argType )
    {
        case NOARG:  /* No argument. Center current line */
            yStart = yEnd = pArg->arg.noarg.y;
            break;

        case LINEARG:  /*  Center range of lines */
            yStart = pArg->arg.linearg.yStart;
            yEnd = pArg->arg.linearg.yEnd;
            break;
    }

    /* Center current line or range of lines */
    for( ; yStart <= yEnd; yStart++ )
    {
       /* Get a line from the current file */
        len = GetLine( yStart, buf, pFile );

        if( len > 0 )
        {
            /* Center the text in this line */
            pBuf = buf + strspn( buf, " \t" );
            len = strlen( pBuf );
            memmove( buf+(LINE_LENGTH-len) / 2, pBuf, len+1 );
            memset( buf, ' ', (LINE_LENGTH - len) / 2 );

            /* Write modified line back to the current file */
            PutLine( yStart, buf, pFile );
        }
    }
    return TRUE;
}
