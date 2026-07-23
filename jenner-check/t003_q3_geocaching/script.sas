/* Question 3 from "Assignment1 (1).sas" — the same geocaching layout read two ways.
 *
 * The original reads geocaching.txt (a Canvas file not in the repo) twice: once with
 * column input (Name $1-20, LongDeg 21-22, ...) and once with formatted input using
 * column pointers (@1 Name $CHAR20., @21 LongDeg 2., ...). Both INPUT statements are
 * kept verbatim; the only change is the sample data, which is inlined below at the
 * exact column positions the author's INPUT statements expect. */

/*a*/
DATA CACHE;
    INFILE DATALINES;
    INPUT Name $1-20 LongDeg 21-22 LongMin 23-28 LatDeg 29-30 LatMin 31-36;
    DATALINES;
Cache Alpha         8225.1003746.200
Hidden Rock         7103.4504221.900
River Bend          8012.0002547.500
;
RUN;

PROC PRINT DATA=CACHE;
RUN;

/*b*/
DATA CACHE2;
    INFILE DATALINES;
    INPUT @1 Name $CHAR20. @21 LongDeg 2. @23 LongMin 6. @29 LatDeg 2. @31 LatMin 6.;
    DATALINES;
Cache Alpha         8225.1003746.200
Hidden Rock         7103.4504221.900
River Bend          8012.0002547.500
;
RUN;

PROC PRINT DATA=CACHE2;
RUN;
