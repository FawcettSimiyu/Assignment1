s/*Question 1*/

DATA organization;
   INFILE '/home/u59960140/Assignment1/organization.txt' DSD DLM=':' MISSOVER;
   INPUT LastName $ EmpNo $ Salary;
RUN;

PROC PRINT DATA=organization;
RUN;

/*Question 2*/
/*a*/

PROC IMPORT DATAFILE='/home/u59960140/Assignment1/titanic3.xlsx'
    OUT=Titanic
    DBMS=xlsx
    REPLACE;
    SHEET='Sheet1';
RUN;

PROC CONTENTS DATA=Titanic;
RUN;

/*b*/
PROC PRINT DATA=Titanic (OBS=10);
RUN;

/*c*/
PROC FREQ DATA=Titanic;
    TABLES pclass;
RUN;

/*d*/
PROC MEANS DATA=Titanic MEAN;
    VAR age;
RUN;

/*Question 3*/
/*a*/
DATA CACHE;
    INFILE '/home/u59960140/Assignment1/geocaching.txt';
    INPUT Name $1-20 LongDeg 21-22 LongMin 23-28 LatDeg 29-30 LatMin 31-36;
RUN;

PROC PRINT DATA=CACHE;
RUN;

/*b*/
DATA CACHE2;
    INFILE '/home/u59960140/Assignment1/geocaching.txt';
    INPUT @1 Name $CHAR20. @21 LongDeg 2. @23 LongMin 6. @29 LatDeg 2. @31 LatMin 6.;
RUN;

PROC PRINT DATA=CACHE2;
RUN;



