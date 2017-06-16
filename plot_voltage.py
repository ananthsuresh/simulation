# Python program that loads a text file with a 2D array and plots averages
# and standard deviation. It receives a filename as a command-line argument and
# creates a .png file containing the plot. The data file must be formatted such that
# the first column has x-axis values and the remaining columns have values
# for multiple measurements that are to be averaged. The following is an
# example in which the x-axis values are 10000, 20000, and 30000:
# 10000 230 255 225 232 220
# 20000 880 910 860 890 880
# 30000 2020 1960 1980 1950 1970
# In the above example, the remaining values in each row would be averaged,
# and the standard deviation would be computed. For example: 230 255 225
# 232 and 220. The "errorbar" function is used to plot the errorbars for
# the standard deviation values.
# Requires numpy and pylab.
import sys
#import os
from matplotlib import use
use('Agg')
from matplotlib import pyplot
from pylab import *
from numpy import *
filename = sys.argv[1] # Assumes filename is passed as a command-line argument
#directory = os.environ.get('PFSDIR')
#filename = directory + '/' + filename
data = loadtxt(filename, unpack=True)
#x = data[0]
#m = mean(data[1:,:], axis=0)
#s = std(data[1:,:], axis=0)
pyplot.figure()
#pyplot.errorbar(x, m, yerr=s) # Plot lines
pyplot.plot(data, "-") # Plot markers
#pyplot.plot(data, ".")
#xlim((min(x) - 1, max(x) + 1)) # Adjust x-axis limits
xlabel('Time(ms)')
ylabel('Voltage(mV)')
filename = filename.replace(".txt","")
title(filename)
savefig(filename + '.png')
