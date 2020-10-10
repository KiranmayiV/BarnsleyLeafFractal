% barnsley fern - iterated function systems
%choose starting point
%generate a random number
%pick a transformation based on random number
%store updated coordinate
%repeat by again gen random number
%finally plot all the points.

x=0;
y=0;
store_x=zeros(100001,1);
store_y=zeros(100001,1);
p1=0.01;
p2=0.07;
p3=0.07;
p4=0.85;
store_x(1)=x;
store_y(1)=y;
for i=1:100000
    r=rand(1,1);
    if r < p1
        x_new = store_x(i);
        y_new = 0.16 * store_y(i);
        store_x(i+1)=x_new;
        store_y(i+1)=y_new;
    elseif r < p1+p4
        x_new = 0.85.*store_x(i) + 0.04.*store_y(i);
        y_new = -0.04*store_x(i) + 0.85*store_y(i) + 1.6;
        store_x(i+1)=x_new;
        store_y(i+1)=y_new;
    elseif r < p1+p4+p2
        x_new = 0.2*store_x(i) - 0.26*store_y(i);
        y_new = 0.23*store_x(i) + 0.22*store_y(i) + 1.6;
        store_x(i+1)=x_new;
        store_y(i+1)=y_new;
    else
        x_new = -0.15*store_x(i) + 0.28*store_y(i);
        y_new = 0.26*store_x(i) + 0.24*store_y(i) + 0.44;
        store_x(i+1)=x_new;
        store_y(i+1)=y_new;
    end
end
figure(3)
plot (store_x(:,1),store_y(:,1),'.')