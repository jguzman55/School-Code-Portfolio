clear

sigma = 10;

beta = 8/3;

p = 28;

x = randi([-10,10]);

y = randi([-10,10]);

z = randi([-10,10]);


for t = 1:5000
    
   
   newx = (sigma*(y-x))*.01; 
   
   newy = (x*(p-z)-y)*.01;
   
   newz = (x*y-(beta*z))*.01;
   
   x = x + newx;
   
   y = y + newy;
   
   z = z + newz;
   
   allx(t) = x;
   
   ally(t) = y;
   
   allz(t) = z;
    
    
    
end


plot3(allx,ally,allz) %plot3 to plot all three of our all

