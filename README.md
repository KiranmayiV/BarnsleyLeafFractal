# BarnsleyLeafFractal

matlab code for generating barnsley leaf fractal from iterated functions - 

x(n+1) = a x(n) + b y(n) + e
y(n+1) = c x(n) + d y(n) + f

To generate the fern leaf you need to use 4 transformations whose
parameters are:
              a       b        c       d      e     f     
Function 1:  0.00   0.00   0.00  0.16  0.0  0.00   0.01
Function 2:  0.85   0.04  -0.04  0.85  0.0  1.60   0.85
Function 3:  0.20  -0.26   0.23  0.22  0.0  1.60   0.07
Function 4: -0.15   0.28   0.26  0.24  0.0  0.44   0.07

There is a web-based program for creating the images on giving the parameter sets available at http://cs.lmu.edu/~ray/notes/ifs/
