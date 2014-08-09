### Dscription of the R codes:
 1. data4plots.R
 2. plot1.R
 3. plot2.R
 4. plot3.R
 5. plot4.R


First run data4plots.R.
This code reads in the original data file: household_power_consumption.txt. Since the data file is large, and also because only a subset of the entire data is needed for plotting, which is much smaller the the whole data set, the subset data -- containing information for two dates, Feb 1, 2007 and Feb 2, 2007 -- is saved as household.csv.

The four codes listed in items 2 to 5 read the smaller data for plotting. Four plots are made using these codes. The plots are saved as png files. 
### The plots are:
  1. plot1.png: a histogtram of global active power in kilowatts
  2. plot2.png: a time-series profile of glabal active power in kilowatts
  3. plot3.png: time-series profiles of three sub-metering
  4. plot4.png: four plots in the same window
    **Top left**: plot2 mentioned above
    **Botton left**: plot3 mentioned above
    **Top right**: time-serise profile of voltage
    **Bottom left**: time-series profile of global reactive power

