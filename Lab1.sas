* use asterisk and a semicolon at the end to comment out;
/*"Ctrl" + "/" pressed together will help to comment out code quickly;*/ 
/*"Ctrl" + "/" + "shift" pressed together will uncomment code;*/ 
/*F3 will run code*/ 


/**/ In our program, all of the colors are present, with the exception of red. An example of code with an;
* error (red text) is shown below. CALL is in red because it is not a recognized SAS keyword for a
* statement inside a print procedure.;

PROC PRINT DATA=work.exposure2;
CALL age;


/*Julianne Lab 1*/
LIBNAME bios500 'S:\courses\BIOS500\WEISS\DATASETS';
	/*LIBNAME calls up a library and opens the directory for use*/
		/*bios500 here refers to the shortcut name within SAS that will call to that dataset*/
			/*sorta like a variable name for the dataset*/

PROC Contents DATA= bios500.exposure;
RUN;

	/*This will provide a summary of the data that the variable name addresses (bios500)*/
	/*PROC= short for procedure (pronounced PROK). PROC indicates that a procedure
	will be requested.*/
	/*CONTENTS= the name of a procedure that describes the structure of the data set.*/
	/*DATA= an option that identifies which data set to process.*/
	/*bios500 the libref or library name. It directs SAS to the library called bios500*/
	/*. a period must separate the libref from the data set name. */
	/*exposure the data set name. This data set must be in the bios500 library. There cannot be 
	any blank spaces within the syntax bios500.exposure.*/

PROC Contents DATA= bios500.exposure short;
RUN;

	/*This will provide an abbreviated summary of the data that the variable name addresses (bios500)*/


PROC PRINT DATA=bios500.exposure; 
RUN;

	/*Proc Print= this procedure “prints” out the data set in the output window. This doesn’t actually send 
	anything to the printer but instead shows the requested data on the output screen. To 
	print a hard copy of the results, go to the File menu. */
	
PROC PRINT DATA=bios500.exposure (obs=10); 
RUN;
	/*Adding the option (OBS=n) to the print statement limits the number of observations printed to the first n.*/
	
PROC PRINT DATA=bios500.exposure (obs=10);
VAR id age; 
RUN;

/*"ctrl" + "e" will delete entire log*/

Data exposure 2; /*creates a temporary data set called bios2*/
Data bios500.exposure2; /*creates a permanent dataset*/
	set bios500.exposure; /*we are setting our original dataset*/
	BMI=weight*703/height**2 /* "*" is multiply "**" is to a power*/
	
*Type NUMS in searchbar to bring up line numbers;
