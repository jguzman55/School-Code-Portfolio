%part B

clear 

x = 1;

p = 0;

n = 23; %40

for i = 1:n-1 %so the last person isn't left out
    
      
  x = x * (1-((n-i)/365)) %figuring out the chance of not finding a birthday (1-p(probability)
  
end

p = 1 - x; %allows me to check probability


%part c, staying
clear

con = 1;


wins = 0; 

for t = 1:10000
    
    car = randi([1,3],1); %1,2,3, correct, dont change, car is set to a certain door (1-3),car = randi([1,3],10000,1);
    
    pick1 = randi([1,3],1);
    
    if pick1 == 1
    
        if car ~= 1
            
           % rev = randi([2,3],1);
            
            pick2 = randi([2,3],1);
   
        end 
        
        if car == 1
    
            wins = wins +1;
        
        end
    end
    
    if pick1 == 2
        
        if car ~= 2
            
            
            pick2 = randi([2,3],1);
   
        end
        
        if car == 2
    
        
            wins = wins +1;
        end
    end
    
    if pick1 == 3
        
        if car ~= 3
            
            
            pick2 = randi([2,3],1);
   
        end
        
        if car == 3
    
        
            wins = wins +1; 
        end
    end
    
end

wins = (wins/10000)*100