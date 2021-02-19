clear

epochs = 0;

in = [1 0 0 0;0 1 0 0; 0 0 1 0; 0 0 0 1];

tar = [1 0;1 0;0 1; 0 1];

w = (rand(4,2)*2-1);

mse = 100000;

lrate = .1;

while mse > .05
    
    epochs = epochs+1;
    
    for n = 1:4
        
    i = in(n,:);
    
    t = tar(n,:);
    
    out = i*w;
    
    e = t - out;
    
    errs(n)= mean(e.^2);
    
    delta = lrate.*(i'*e)
    
    w = w+delta;
    
    end
    
    mse = mean(errs)
    
    allmse(epochs) =mse;


end

plot(allmse)

xlabel('Epochs')
ylabel('mse')