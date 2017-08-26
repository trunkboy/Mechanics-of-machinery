% to demonstrate the double slider mechanism using plot based simulation 


a= input('\n Script to simulate the double silder mechanism \n  a:');
b= input('\n  b:');

%trac= animatedline(x,y)

i=1;
trac=zeros(2,400);


for theta = linspace(0,6*pi,400);
    
    x= [-b*cos(theta) a*cos(theta)];
    y= [0 (a+b)*sin(theta)];
    
    trac(:,i)= [x(2);y(2)];
    
   % addpoints(trac,x(2),y(2))
   % drawnow
    
    plot(x,y,trac(1,:),trac(2,:),'.')
    % plot(x,y)
    axis('equal');
    axis([-3*(a+b) 3*(a+b) -2*(a+b) 2*(a+b)]);
    
    
    i=i+1;
    pause(0.0001);
end