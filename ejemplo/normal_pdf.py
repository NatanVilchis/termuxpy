# coding: utf-8
import math
import random
import numpy
import scipy.stats
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plot
import os
def f(x):
	return scipy.stats.norm(0, 1).pdf(x)
a=10
X = numpy.arange(-a, a, 0.01) 
plot.plot(X, f(X), color='r', linewidth=1)
filename="normal_pdf.png"
plot.savefig(filename)
input("\n\n==> Enter para ver gráfico...")
os.system("termux-open " +filename)