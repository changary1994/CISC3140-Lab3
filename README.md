# COVID-19 Statistics for North America
This repository contains an AWK script that takes the CSV file of data on COVID-19 cases and statistics in North America, like total cases, deaths, and recovery, to name a few. The CSV file was retrieved from Kaggle at "https://www.kaggle.com/anandhuh/covid-in-north-america-latest-data", provided by user anandhuh.
# Technologies:
AWK was used to parse the values from the CSV file. MakeFile was used to create a .txt file from the script provided. 
# Task Performed:
This program reads in the CSV file and displays the data for simple viewing. It keeps track of the total number of cases, deaths, recovery, ongoing active cases, tests conducted, and the population all across North America. It then displays a report of the sum, as well as the percentage of cases that resulted in death versus the percentage of cases that resulted in full recovery.
# To Operate:
Simply clone this repository and navigate to the folder containing the MakeFile in your terminal. Then, enter the following commands:

```make -f MakeFile```

```vi covidReport.txt```

The first command will execute the MakeFile, which will generate the report. 
The second command will allow you to view the report text file with vi.
