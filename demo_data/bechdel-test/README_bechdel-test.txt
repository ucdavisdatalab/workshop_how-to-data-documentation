
GENERAL INFORMATION

Title of Project: Movie Return-on-Investment and the Bechdel Test

About: 

The aim was to look at whether that passed the Bechdel test had higher or lower returns on investment from movies that didn't, and looking at trends over time. 

Corresponding Author:  

Victoria Farrar, UC Davis, vsfarrar@ucdavis.edu 

Contributors:

<the roles can be defined by the CRediT taxonomy http://credit.niso.org >

- [FirstName1 LastName1], [Affiliation], [Email]: [role1], [role2], [...]
- [FirstName2 LastName2], [Affiliation], [Email] : [role1], [role2], [...]
- [FirstName3 LastName3], [Affiliation], [Email] : [role3], [role4], [...]


Date(s) of data collection (single date, range, approximate date): 2021-02 

Geographic location of data collection: N/A (sourced from the internet) 

Information about funding sources that supported the collection of the data: N/A 


SHARING/ACCESS INFORMATION

Licenses/restrictions placed on the data: 

The data is available under the Creative Commons Attribution 4.0 International License (from the source at data.world)

Recommended citation for this dataset: N/A 


DATA & FILE OVERVIEW

File List: 

###code : contain all my R scripts 
	- bechdel_data_processing.R : calculate international gross profits and return on investment (ROI) for each movie ( ROI = total gross profits / budget), filtered out movies before 1990.
	- bechdel-test_figures.R : create figures 1 and 2 
	- bechdel-test_top10_tables.R : create tables 1 and 2 of the top 10 movies that pass and fail the Bechdel test 

###data : contains all data files for project
	- 2021-03-04_bechdel-test_processed.csv : contains processed data, with return on investment calculated and limited to movies 1990 onwards. 
	-2021-03-04_bechdel-test_processed_dictionary.csv : describes the variables and allowed values for the processed dataset (2021-03-04_bechdel-test_processed.csv) 
	- bechdel-test_raw.csv : raw data, download from data.world FiveThirtyEight source (originally called movies.csv)
 

###figures : figure images for project
	- bechdel_test_figure1.png : shows return on investment across different levels of the test
	- bechdel_test_figure2.png : shows percent of movies that pass the test over time 

### tables: text tables for project
	- bechdel_test_table1.txt : show the top 10 movies that pass, by ROI
	- bechdel_test_table2.txt : shows the top 10 movies that fail, by ROI

Other files: 

- bechdel_test_workflow_diagram.png: visually shows data analysis processes. 

Relationship between files: 
Processed data (2021-03-04_bechdel_test_processed.csv) is processed from the raw data (bechdel-test_raw.csv), by the script bechdel_data_processing.R. 



METHODOLOGICAL INFORMATION

Description of methods used for collection/generation of data: 

This data was downloaded from data.world (https://data.world/fivethirtyeight/bechdel) to recreate the FiveThirtyEight analysis for this article:https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/. (Data was accessed on 2021-03-04). 

Was data derived from another source? YES
	If yes, list source(s): 
		- FiveThirtyEight bechdel repository on data.world (https://data.world/fivethirtyeight/bechdel)

Methods for processing the data: 

Raw data downloaded from the data.world repository was filtered for movies after 1990, international gross profits were calculated (total profits - domestic gross profits), return on investment was calculated as profits/budget. This was done using the bechdel_data_processing.R script. 

Methods for reproducing the analysis: 

To produce the figures (_figure1.png and _figure2.png), use the processed data (2021-03-04_bechdel_test_processed.csv) with the bechdel-test_figures.R script. 

To produce the tables (_table1.txt and _table2.txt), use the processed data (2021-03-04_bechdel_test_processed.csv) with the bechdel-test_top10_tables.R. 

This workflow is diagramattically shown in the workflow diagram (bechdel-test_workflow_diagram.png)

Software needed to interpret the data: 

Access to R statistical language (add version here). Specific R packages are required for analysis (see R scripts for loaded packages). 

