from pylab import *
import numpy as np
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.mlab import griddata
from scipy.interpolate import interp1d
from scipy import polyval, polyfit


font = {'size'   : 14}
matplotlib.rc('font', **font)

data1 = '140519_2_ZnO_SnO2.txt'
data2 = '140516_1_ZnO.txt'
x = loadtxt(data1, unpack=True, usecols=[0])
y = loadtxt(data1, unpack=True, usecols=[1])
z1= loadtxt(data1, unpack=True, usecols=[2])
z2 = loadtxt(data2, unpack = True, usecols = [2])

z = ((z1-z2)/z1)*100
z= z1
xi = np.linspace(-5, 5, 11)
yi = np.linspace(-5, 5, 11)

X, Y = np.meshgrid(xi, yi)
Z = griddata(x, y, z, X, Y)
    
fig = figure(figsize=(6,6))
ax = fig.add_subplot(111)
fig2 = figure(figsize=(6, 6))
ax2 = fig2.add_subplot(111)
ax2.set_aspect('equal')

lvls = arange(30, 105,5)
plot2 = ax2.contourf(X, Y, Z, zdir='z', levels= lvls, cmap=cm.hot, alpha = 1.0)

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


for i in range (0, 11):
    ax2.plot((i-5, i-5), (-0.5, 0.5), '-', color = 'blue', linewidth = 3)

ax2.plot((-5,5), (-0.5,-0.5), '-', color = 'blue', linewidth = 3)
ax2.plot((-5,5), (0.5,0.5), '-', color = 'blue', linewidth = 3)

for i in range (0, 11):
    ax2.plot((i-5, i-5), (3, 4), '-', color = 'red', linewidth = 3)

ax2.plot((-5,5), (3,3), '-', color = 'red', linewidth = 3)
ax2.plot((-5,5), (4,4), '-', color = 'red', linewidth = 3)     

Z_i = []
for i in range(0, len(Z[0])):
    Z_i.append(((Z[-3][i]+Z[-3][i])/2))

x = linspace (-4.5, 4.5, 10)

for i in range (0, len(x)):
    Z_interp = interp(x, X[0], Z_i)
    
Z_trunc = []
x_trunc = []

for i in range (1, 9):
    x_trunc.append(x[i])
    Z_trunc.append(Z_interp[i])
    
ax.plot(x_trunc, Z_trunc, 'o')
a, b, c = polyfit(x_trunc,Z_trunc, 2)
x_out = linspace(-4.5, 4.5, 10)
y_pred = polyval([a,b,c], x_out)
ax.plot(x_out, y_pred, '-')

for i in range (0, len(y_pred)):
    y_pred[i] = round(y_pred[i],1)
    
 
savetxt('red.txt', transpose([x_out, y_pred]))

x_red = linspace(-4.6, 4.4, 10) 
y_red = [3.3]*10

x_blue = linspace(-4.6, 4.4, 10) 
y_blue = [-0.2]*10

lst = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

for i in range (0, len(x_red)):
    ax2.text(x_red[i], y_red[i], lst[i], color = 'red')
    ax2.text(x_blue[i], y_blue[i], lst[i], color = 'blue')


plt.show()
