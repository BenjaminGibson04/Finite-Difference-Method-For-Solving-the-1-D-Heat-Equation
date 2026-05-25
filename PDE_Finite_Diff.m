function U = PDE_Finite_Diff(a,l,T,dt,dx,k,p,f)
    %a - diffusivity
    %l - length
    %T - max time
    %dt - time subintervals
    %dx - position subintervals
    %k - k(t) = u(t,0)
    %p - p(t) = u(t,l)
    %f - f(x) = u(0,x)

    %Calculate # of time and position subintervals
    m = T/ dt;
    n = l/dx;
    
    mu = a * dt / (dx)^2;
    U = zeros(m+1,n+1);
    %Calculate positions at intitial time
    U(1,1) = f(0);
    U(1,n+1) = f(l);
    x = 0;
    for i = 2:n
        x = x + dx;
        U(1,i) = f(x);
    end

    %Iteratively calculate positions at sequential times
    t = 0;
    for j = 2:m+1
        t = t + dt;
        U(j,1) = k(t);
        U(j,n+1) = p(t);
        x = 0;
        for i = 2:n
            x = x+dx;
            U(j,i) = mu*U(j-1,i+1) + (1-2*mu)*U(j-1,i) + mu*U(j-1,i-1);
        end
    end
end