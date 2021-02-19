clear

clf

mandlebrot = zeros(300,200);

x = 0;

for real = -2:0.01:1
    
    x = x + 1;
    
    i = 0;
    
    for img = -1:0.01:1
        
        i = i + 1;
        
        j = 0;
        
        h = 0;
    
        for n = 1:1000
    
            j = (j*j) + complex(real,img);
            
            h(n) = j;
            
        end
            
        if (max(abs(j))<2)   
               
            mandlebrot(x,i) = 1;
    
        end

    
    end

    
    
end
    

    colormap([1 1 1; 0 0 0])
    
    image([-2:.01:1],[-1:.01:1], mandlebrot'*2)