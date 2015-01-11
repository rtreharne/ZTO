from pylab import *
import numpy as np
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.mlab import griddata
from scipy import stats

font = {'size'   : 14}
matplotlib.rc('font', **font)

data1 = '140519_2_ZnO_SnO2.txt'
data2 = '140516_2_ZnO_SnO2.txt'
data3 = '140516_1_ZnO.txt'
data4 = 'band_gap_prof.txt'
data5 = '140516_2_d.txt'
x = loadtxt(data1, unpack=True, usecols=[0])
y = loadtxt(data1, unpack=True, usecols=[1])
z1= loadtxt(data1, unpack=True, usecols=[2])
z2 = loadtxt(data2, unpack = True, usecols = [2])
z3 = loadtxt(data3, unpack = True, usecols = [2])
z4 = loadtxt(data4, unpack = True, usecols = [2])
d = loadtxt(data5, unpack = True, usecols = [2])

z_sno2 = z1-z3
z_zno = z3*4.04
z = z_sno2/(z_sno2+z_zno)*100

slope, intercept, r_value, p_value, st_err = stats.linregress(z,z4)
print slope, intercept

x_lin = np.linspace(0,100,100)
y_lin = slope*x_lin + intercept

xi = np.linspace(-5, 5, 11)
yi = np.linspace(-5, 5, 11)

X, Y = np.meshgrid(xi, yi)
Z = griddata(x, y, z, X, Y)
    

fig2 = figure(figsize=(6, 6))
ax2 = fig2.add_subplot(111)
ax2.set_aspect('equal')

fig3 = figure()
ax3 = fig3.add_subplot(111)
#ax3.plot(z,z4,'o')
ax3.set_xlim(0,100)
ax3.set_title('Band gap (ellipsometry) vs %SnO$_{2}$')
ax3.set_ylabel('Band gap, E$_G$ (eV)')
ax3.set_xlabel('% wt. SnO$_{2}$')
ax3.plot(x_lin, y_lin)

cb = ax3.scatter(z,z4,s=100,c=d,alpha=0.5)
bar = fig3.colorbar(cb)

lvls = arange(min(z), max(z), (max(z)-min(z))/10)
##lvls = arange(140,350,20)
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

print Z[1]




plt.show()
