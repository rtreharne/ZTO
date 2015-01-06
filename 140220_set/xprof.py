"""
Plot graph from data "rs.txt"
"""
from pylab import *
import numpy as np
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.mlab import griddata

font = {'size'   : 14}
matplotlib.rc('font', **font)

data1 = '140218_1.txt'
data2 = 'B.txt'
x = loadtxt(data1, unpack=True, usecols=[0])
y = loadtxt(data1, unpack=True, usecols=[1])
z= loadtxt(data1, unpack=True, usecols=[2])
z2 = loadtxt(data2, unpack=True, usecols=[2])

fig = plt.figure()



ax = fig.gca(projection='3d')

for i in range (len(x)):
    x[i] = (x[i]-1)*7+5
    y[i] = (y[i]-1)*7+5
    
xi = np.linspace(5, 82, 12)
yi = np.linspace(5, 40, 12)

X, Y = np.meshgrid(xi, yi)
Z = griddata(x, y, z, X, Y)
Z2 = griddata(x, y, z2, X, Y)
outputx=[]
outputy=[]
outputz=[]
for i in range (len(Z)):
    for j in range (len(Z[i])):
        outputx.append(Y[i][j])
        outputy.append(X[i][j])
        outputz.append(Z[i][j])
output = outputx, outputy, outputz
#savetxt('/home/treharne/Documents/conferences/IEEE_pvsc_colorado_2014/analysis/xvseff/outputxprof.txt', transpose(output))
    
ax.plot_surface(X, Y, Z, rstride=1, cstride=1, alpha=0.3, linewidth = 0.2)
cset = ax.contourf(X, Y, Z, zdir='z', offset=min(z), cmap=cm.coolwarm)
#cset = ax.contourf(X, Y, Z, zdir='x', offset=-9, cmap=cm.coolwarm)
#cset = ax.contourf(X, Y, Z, zdir='y', offset=9, cmap=cm.coolwarm)

fig2 = figure(figsize=(5, 6))
ax2 = fig2.add_subplot(111)
ax2.set_aspect('equal')
ax2.set_aspect('equal')




subplots_adjust(right = 0.8)
lvls = arange(0,0.9, 0.1)
plot2 = ax2.contourf(Y, X, Z, zdir='z', levels= lvls, cmap=cm.jet, alpha = 1.0)

cbar = colorbar(plot2, ticks = lvls)
cbar.set_label("Zn/(Cd+Zn), $x$", fontsize = 16)
ax2.set_xlabel("X (mm)")
ax2.set_ylabel("Y(mm)")
clev = arange(180, 300, 10)
CS = ax2.contour(Y, X , Z2, clev, colors = 'black')
ax2.clabel(CS, inline=1, fmt='%1.0f')



ax.set_xlabel('X')
#ax.set_xlim(0,100)
ax.set_ylabel('Y')
#ax.set_ylim(0,100)
ax.set_zlabel('Z')
#ax.set_zlim(100, 700)



plt.show()
