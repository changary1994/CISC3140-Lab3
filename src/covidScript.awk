BEGIN {
	
	FS = ",";
	#The following are declarations and initializations for relevant variables;
	country = "";
	countryCases = 0;
	sumCases = 0;
	countryDeaths = 0;
	sumDeaths = 0;
	countryRecovered = 0;
	sumRecovered = 0;
	activeCases = 0;
	sumActiveCases = 0;
	countryTests = 0;
	sumTests = 0;
	population = 0;
	sumPopulation = 0;
	percentDead = 0;
	percentRecovered = 0;
	
}

{
	#Properly assign comma separated values to their correct variable;
	country = $1;
	countryCases = $2;
	countryDeaths = $3;
	countryRecovered = $4;
	activeCases = $5;
	countryTests = $8;
	population = $10;
	#Dynamically update sumCases, sumDeaths, sumRecovered, sumActiveCases, sumTests, sumPopulation as program continues;
	sumCases = sumCases + countryCases;
	sumDeaths = sumDeaths + countryDeaths;
	sumRecovered = sumRecovered + countryRecovered;
	sumActiveCases = sumActiveCases + activeCases;
	sumTests = sumTests + countryTests;
	sumPopulation = sumPopulation + population;
	#Print the values of each relevant column to display table of data;
	printf "%-40s %-15s %-15s %-15s %-15s %-15s %-15s\n", country, countryCases, countryDeaths, countryRecovered, activeCases, countryTests, population;

}

END {
	#Calculate percentageDead and percentageRecovered based on sums calculated;
	percentDead = (sumDeaths / sumCases) * 100;
	percentRecovered = (sumRecovered / sumCases) * 100;
	#Print all tracked sums and percentage calculated for a final report;
	print "\n Total Cases in North America: ";	
	printf "%-5s\n", sumCases;
	print "\n Total Deaths in North America: ";
	printf "%-5s\n", sumDeaths;
	print "\n Total Recovered in North America: ";
	printf "%-5s\n", sumRecovered;
	print "\n Total Active Cases in North America: ";
	printf "%-5s\n", sumActiveCases;
	print "\n Total Tests Conducted in North America: ";
	printf "%-5s\n", sumTests;
	print "\n Total Population in North America: ";
	printf "%-5s\n", sumPopulation;
	print "\n Percent of cases resulting in deaths: ";
	printf "%.2f\n", percentDead;
	print "\n Percent of cases resulting in recovery: ";
	printf "%.2f\n", percentRecovered;
}
