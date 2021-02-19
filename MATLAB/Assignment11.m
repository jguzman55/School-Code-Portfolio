clear

z = 0.65; 

i = [1 1 1 0 0 0 0 0 0
0 0 1 1 1 0 0 0 0
0 0 0 0 1 1 1 0 0
0 0 0 0 0 0 1 1 1];


w =rand(9,4);

w= w./sum(w);

for epoch = 1:200
    
    for n = 1:4
    
        in=i(n,:);
        
        output = (in*w);
        
        [value winner] = max(output);
        
        w(:,winner)= w(:,winner) + (z*(in/sum(in))')-z*w(:,winner); 
    
    end
end


w