tic;
clear

clf %clear figure

n = 50;

GRID = rand(n,n) > .40; %produce truth values in every cell

up = [2:n 1];

down = [n 1:n-1];

colormap(gray(2));

for i = 1:1000
    
    
    neighbors = GRID(up,:) + GRID(up,up) + GRID(up,down)+ GRID(:,up)+ GRID(down,:)+ GRID(down,down)+ GRID(down,up)+ GRID(:,down);
    
    
    GRID = neighbors == 3 | neighbors == 2&GRID;
    
    image(GRID*2);
    
    pause(0.5);


end
toc