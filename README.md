# Finite-Difference-Method-For-Solving-the-1-D-Heat-Equation
This explicit numerical method finds numerical solutions to the one-dimensional heat equation with non-constant boundary conditions 

Code written in Matlab

Consider the one-dimensional heat equation $`\frac{\partial u}{\partial t} = \gamma\frac{\partial^2 u}{\partial x^2}`$ over a rectangular mesh of nodes $`(t_j,x_m)`$, with initial conditions and boundary conditions

$$u_{0,m} = f(x_m)$$
$$u_{j,0} = k(t_j)$$
$$u_{j,n} = p(t_j)$$

We find data points on the mesh with the following:

$$u_{j+1,m} = \mu u_{j,m+1}+(1-2\mu )u_{j,m} + \mu u_{j,m-1}$$
$$\mu = \gamma \frac{\Delta t}{(\Delta x)^2}$$
