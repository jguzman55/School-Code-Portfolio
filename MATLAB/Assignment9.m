clear

tic;

allmaxnet = zeros(10,50);

for n = 1:10
    
    x = 0;
    
    cells = 100;
    
    for edges = 5:5:250
        
        x = x + 1;
        
        m = zeros(cells,cells);
        
        while sum(sum(m)) < edges
        
            i = randi([1,cells-1]);

            j = randi([i+1,cells]) ;
            
            m(i,j) = 1;
        
        end
           
        
        z = m +m';

    
        for y = 1:cells
            
            CA = zeros(1,cells);
            
           CA(y) = 1;
           
           for t = 1:cells
               
               CA=(CA*z)+CA;
               
           end
           
           NS(y) = nnz(CA);
        end
        MN(x)=max(NS);
    end
    allmaxnet(n,:) = MN;
        
    end
 plot([0.05:0.05:2.5],mean(allmaxnet))

toc