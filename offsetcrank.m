% Script to plot a graph depicting the kinematic linkages in a offset crank
% and change the graph contionously with varying angle of the input crank.

R= input('\n Radius of crank : ');
h= input('\n Offset height : ');
L= input('\n Length of connecting rod : ');



for theta = linspace(0,2*pi,1000);
   
  
    l1=[R*cos(theta) R*sin(theta)];
    l2=[R*cos(theta)+L*cos(asin((h-R*sin(theta))/L)) h];

    
    X(:,1) = [0 0];         % X plots the crank
    X(:,2) = [0 0] + [R*cos(theta) R*sin(theta)];
    
    Y(:,1) = l1;            % Y plots the connecting rod
    Y(:,2) = l2;
    
    B = [2*L -h -h 2*L 2*L -h -h; 0 0 2*h 2*h -h -h 0];
    
    phi=linspace(0,2*pi,400);
    path = ones(2,100);
    path(1,:)= linspace(-h,2*L,100);
    path(2,:)= path(2,:)*h;
    
    plot(X(1,:),X(2,:),Y(1,:),Y(2,:),B(1,:),B(2,:),R*cos(phi),R*sin(phi),path(1,:),path(2,:),'.')
    axis('equal');
    
   
    pause(0.00000001)
    
end
    