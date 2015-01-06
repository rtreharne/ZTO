from pylab import *
import numpy as np
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.mlab import griddata


font = {'size'   : 14}
matplotlib.rc('font', **font)

data1 = '140519_2_ZnO_SnO2.txt'
data2 = '140516_1_ZnO.txt'
x = loadtxt(data1, unpack=True, usecols=[0])
y = loadtxt(data1, unpack=True, usecols=[1])
#z1= loadtxt(data1, unpack=True, usecols=[2])
z2 = loadtxt(data2, unpack = True, usecols = [2])

z = z2

xi = np.linspace(-5, 5, 50)
yi = np.linspace(-5, 5, 50)

X, Y = np.meshgrid(xi, yi)
Z = griddata(x, y, z, X, Y)
    

fig2 = figure(figsize=(6, 6))
ax2 = fig2.add_subplot(111)
ax2.set_aspect('equal')

lvls = arange(0,80,5)
plot2 = ax2.contourf(X, Y, Z, zdir='z', levels= lvls, cmap=cm.jet, alpha = 1.0)

#cbar = colorbar(plot2, ticks = lvls)
#cbar.set_label("Zn/(Cd+Zn), $x$", fontsize = 16)
ax2.set_xlabel("X (cm)")
ax2.set_ylabel("Y(cm)")
#ax2.set_ylabel("")
CS = ax2.contour(X, Y , Z, lvls, colors = 'black')
ax2.clabel(CS, inline=1, fmt='%1.0f')

lines = arange(-5,6,1)
#ax2.set_xticks(lines, minor=False)
ax2.set_xticks([-5,-3,-1,1,3,5], minor=False)
ax2.xaxis.grid(True, which = 'major')
ax2.set_yticks([-5,-3,-1,1,3,5], minor=False)
ax2.yaxis.grid(True, which = 'major')
ax2.set_xlim(-5,5)
ax2.set_ylim(-5,5)




plt.show()
