from pylab import *
import numpy as np
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.mlab import griddata


font = {'size'   : 14}
matplotlib.rc('font', **font)

data1 = '140519_3_ZnO_SnO2.txt'
data2 = '140516_2_ZnO_SnO2.txt'
data3 = '140516_1_ZnO.txt'
x = loadtxt(data1, unpack=True, usecols=[0])
y = loadtxt(data1, unpack=True, usecols=[1])
z1= loadtxt(data1, unpack=True, usecols=[2])
z2 = loadtxt(data2, unpack = True, usecols = [2])
z3 = loadtxt(data3, unpack = True, usecols = [2])

z_sno2 = z1-z3
z_zno = z3
z = z_sno2/(z_sno2+z_zno)*100

xi = np.linspace(-5, 5, 11)
yi = np.linspace(-5, 5, 11)

X, Y = np.meshgrid(xi, yi)
Z = griddata(x, y, z, X, Y)
    
fig = figure(figsize = (6,6))
fig2 = figure(figsize=(6, 6))
ax = fig.add_subplot(111)
ax2 = fig2.add_subplot(111)
ax2.set_aspect('equal')

lvls = arange(50,110,2)
##lvls = arange(140,350,20)
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
    ax2.plot((i-5, i-5), (3, 4), '-', color = 'red', linewidth = 3)

ax2.plot((-5,5), (3,3), '-', color = 'red', linewidth = 3)
ax2.plot((-5,5), (4,4), '-', color = 'red', linewidth = 3)

    

Z_i = []
for i in range(0, len(Z[0])):
    Z_i.append(((Z[-3][i]+Z[-2][i])/2))

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
    y_pred[i] = round(y_pred[i],2)
    
savetxt('green.txt', transpose([x_out, y_pred]))

x_green = linspace(-4.6, 4.4, 10) 
y_green = [3.3]*10
    
lst = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

for i in range (0, len(x_green)):
    ax2.text(x_green[i], y_green[i], lst[i], color = 'red')

print Z[1], y_pred




plt.show()
