/* Question 2 from "Assignment1 (1).sas" — the Titanic exploration PROCs.
 *
 * The original imports titanic3.xlsx (a Canvas file not in the repo) via PROC IMPORT
 * and then runs PROC CONTENTS, PROC PRINT (OBS=10), PROC FREQ on pclass, and
 * PROC MEANS (MEAN) on age. Since the binary workbook isn't in the repo, this bundle
 * builds a small Titanic sample inline and runs the author's four analysis steps
 * unchanged so you can see PROC FREQ / PROC MEANS / PROC CONTENTS behave as expected. */

DATA Titanic;
    INPUT pclass survived sex $ age fare embarked $;
    DATALINES;
1 1 female 29.0 211.34 S
1 0 male   30.5 26.55  C
1 1 male   48.0 76.29  C
2 0 male   28.0 13.00  S
2 1 female 34.0 21.00  S
2 0 female 40.0 15.75  Q
3 0 male   22.0 7.25   S
3 1 female 27.0 7.92   S
3 0 male   19.0 8.05   S
3 1 male   26.0 7.88   Q
3 0 female 31.0 18.00  S
1 1 female 58.0 146.52 C
2 1 male   36.0 10.50  S
3 0 male   45.0 6.98   Q
;
RUN;

/*a*/
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
