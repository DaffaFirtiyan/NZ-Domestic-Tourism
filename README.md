# NZ Domestic Tourism
 
1. Downloaded csv file from stats.nz
2. Cleaned up the date format in excel

Problem:
Currently the Year Ending column formats "YEDec 1999" and I want to format it as yyyy/dd/mm as per SQL DATE format.

On Excel:

=TEXT(RIGHT(A2,LEN(A2)-2),"mmm yyyy")
RIGHT removes the "YE" prefix.
TEXT combine what's left into "mmm yyyy" format for the next step.

=DATE(YEAR(B2),MONTH(B2)+1,0)
DATE converts the cells into the date format.
YEAR and MONTH extract the year and month from "Dec 1999", then adds 1 to the month to get the next month. The result should be 31/12/1999 or 30/09/2000

3. Create new schema and table in MySQL
create table activities (
	year_ending date,
    activity_group varchar(255),
    income bigint
);
