clear



for h = 1:4000

    x = 0;

    y = rand(1);
    
    for t = 1:1000
        
        y = ((h / 1000)* y * (1-y)) ; %((h*y)*(1-y));
        
        if t > 960
            
           x = x + 1; 
            
           v(h,x) = y;
           
        end 
    end
end

plot(v, 'm.','MarkerSize',0.01)