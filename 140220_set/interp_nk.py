from pylab import *
import numpy as np


def get_data():
    data1 = 'ZTO_Sn_rich.txt'
    x = loadtxt(data1, unpack=True, usecols=[0])
    n = loadtxt(data1, unpack=True, usecols=[1])
    k= loadtxt(data1, unpack=True, usecols=[2])
    return x, n, k
    
def interpolate(x, n, k):
    data = 'CdSnk.txt'
    xinterp = loadtxt(data, unpack=True, usecols=[0])
    ninterp = interp(xinterp, x, n)
    kinterp = interp(xinterp, x, k)
    data = xinterp, ninterp, kinterp
    return data
    
def savefile(data):
    savetxt('test.txt', transpose(data))
    print 'file "test.txt" saved!'


if __name__ == "__main__":
    x, n, k = get_data()
    data = interpolate(x, n, k)
    savefile(data)
    
    
