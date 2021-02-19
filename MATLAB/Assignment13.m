clear

tic;

epochs = 0;

mse = 10000000;

lrate = .1;

in =[0 0; 1 0; 0 1; 1 1];

t = [0;1;1;0];

w1 = rand(2,2)*2-1;

w2 = rand(2,1)*2-1;

bias1 = rand(1,2)*2-1;

bias2 = rand*2-1;

mom1 = zeros(2,2);

mom2 = zeros(2,1);

mom_h = zeros(1,2);

mom_o = 0;

final = [];

while mse > .01 % && epochs < 5000
    
   epochs = epochs + 1;
   
   if epochs > 5000
       break
       
   end
     
   
   for n = 1:4
       
       i = in(n,:);
       
       tar = t(n);
       
       hid = i*w1+bias1; 
       hid = 1./(1+exp(-hid));  %hid = i*w1+bias1; logistifying
       
       out = hid*w2+bias2;
       out = 1./(1+exp(-out));
       
       err = tar - out;
       sqerr(n) = mean(err.^2);
       
       
       delout= err.*(out.*(1-out));
       delhid = hid.*(1-hid).*(delout*w2');
       
       w1ch = (i'*delhid)*lrate;
       w2ch = (hid'*delout)*lrate;
       
       biasch1 = delhid*lrate;
       biasch2 = delout*lrate;
       
       w1 = w1 + w1ch +(0.9*mom1);
       w2 = w2 + w2ch +(0.9*mom2);
   
       
       b1ch = biasch1+(0.9.*mom_h);
       bias1 = bias1+b1ch;
       
       b2ch = biasch2+(0.9.*mom_o);
       bias2 = bias2+b2ch;
       
       mom1 = w1ch; %might want to double check
       mom2 = w2ch;
       
       mombo = b1ch;
       mombh = b2ch;
              
   end 

   mse = mean(sqerr);
   mse;
   
   final(epochs) = mse;
        
end

plot(final)
xlabel('Epochs')
ylabel('Mean Squared Error (MSE)')
title('Solving the XOR Problem')

toc