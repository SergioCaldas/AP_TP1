<<<<<<< HEAD
function [a] = PARtraveling(n,procs)
||||||| merged common ancestors
function PARtraveling(n,procs,x,y)
=======
function PARtraveling(n,procs)
>>>>>>> e472a54d7fda791e0b81ddd085c5a5601dd1d92e

% This is a simulation of a parallel execution on p processors of the code
% traveling which uses simulated annealing to find the shortest route to go
% through each one of n towns
% Each process executes the same code with different random
% numbers and, in general, will find different answers with different
% costs. The parallel solution is thus the answer with smaller cost.

% generates the position of each town in a square of side 10...
x=10*rand(1,n); y=10*rand(1,n);
% ... plots them
plot([x,x(1)],[y,y(1)],'b-',x,y,'o',x(1),y(1),'*')
% ... and computes the distances between them 
for i=1:n
    for j=1:n
        D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
    end
end

for i=1:n-1
    D(i,i+1)=0;
    D(i+1,i)=0;
end

D(1,n)=0;
D(n,1)=0;
iterations = 0;
iterations2 = 0;


 figure (1)


 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 640 640])
set(gca,'Unit','normalized','Position',[0 0 1 1]);

% with simulated annealing
for p=1:procs
    [Tdist(p),route,iterations(p)]=traveling(x,y,D); 
    subplot(2,procs,p);
    plot([x(route),x(route(1))],[y(route),y(route(1))],'r',x(route),y(route),'o')
    legend(num2str(Tdist(p)));
        title({'Solving the Travelling Salesman Problem using Simulated  Annealing, for 100 cities'},'interpreter','latex');

end

 
% without simulated annealing  
for p=1:procs
    [Tdist2(p),route2,iterations2(p)]=traveling2(x,y,D);
    subplot(2,procs,procs+p);
    plot([x(route2),x(route2(1))],[y(route2),y(route2(1))],'k',x(route2),y(route2),'o')
    legend(num2str(Tdist2(p)));
        title({'Solving the Travelling Salesman Problem using Randomly  Generated  Solutions, for 100 cities'},'interpreter','latex');

end

 a = [Tdist' iterations'   Tdist2' iterations2']
