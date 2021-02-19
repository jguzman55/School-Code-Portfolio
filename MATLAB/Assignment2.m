%part A

clear

ff = []; % null set

x = randi([0,1],10000,1); %generating 10,000 random numbers from 0 to 1, 

for n = 4:9999 % for loop starting at 4 ( we are checking the fourth flip, anything before is meaningless) up to 9999
    
    if x(n) == 1 %checks if the first flip is heads
        if x(n-1) == 1 %checks if the second flip is heads
            if x(n-2) == 1 %checks if the third flip is heads
                if x(n-3) == 1 %checks if the fourth flip is heads
                    
                    ff = [ff x(n+1)]; % indexing our vector to save the fifth flip everytime
               
                end
            end
        end
    end
end

sum(ff == 0) %adding all the iterations where we had our fifth flip be tails

%Part b

clear %(remove this)

hh = 0; %initiating our variable

for n = 1:10000 %for loop with iterations going from 1 to 10,000
    
    flip1 = round(rand); %flipping a coin, 1 = heads, 0 = tails
       
        if flip1 == 1 %if the filp is heads
           
           flip2 = round(rand); %flip coin again
           
           if flip2 == 1 %if its heads again
           
               hh = hh+1; %add one to our variable every time we get heads(1) consecutively 
           
           end
       end
end

((hh/n)*100) %divide the times we get consecutive heads by the number of iterations (10,000) and multiplying it by 100 to get a percentage
