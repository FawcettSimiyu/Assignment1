/* Question 1 from "Assignment1 (1).sas" — colon-delimited read with DSD + MISSOVER.
 *
 * The original reads organization.txt (a Canvas data file not in the repo) with
 *   INFILE '.../organization.txt' DSD DLM=':' MISSOVER;
 * Here the same INFILE options and INPUT statement run against an inline sample
 * that matches the README's description (4 employees, colon delimiters, missing
 * values shown as double colons). The DSD/MISSOVER logic is unchanged. */

DATA organization;
   INFILE DATALINES DSD DLM=':' MISSOVER;
   INPUT LastName $ EmpNo $ Salary;
   DATALINES;
Smith:E1001:52000
Johnson::48000
Williams:E1003:
Brown:E1004:61000
;
RUN;

PROC PRINT DATA=organization;
RUN;
