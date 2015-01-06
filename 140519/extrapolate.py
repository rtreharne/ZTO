from scipy.interpolate import griddata
import numpy as np
import matplotlib.pyplot as plt
x=np.linspace(1.,10.,20)
y=np.linspace(1.,10.,20)
z=z = np.random.random(20)
xi=np.linspace(1.,10.,10)
yi=np.linspace(1.,10.,10)

X,Y= np.meshgrid(xi,yi)
Z = griddata((x, y), z, (X, Y),method='nearest')
plt.contourf(X,Y,Z)
plt.show()
