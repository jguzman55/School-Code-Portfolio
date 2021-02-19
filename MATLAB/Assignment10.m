clear

nodes = 100;

bias = 2;

links = 500;

net = zeros(nodes,nodes);

for n = 1:nodes;
    
   x = ceil(rand*nodes);
   
   while x == n
      
        x = ceil(rand*nodes);
       
   end
   
   net(n,x)=1;
   net(x,n)=1;
   
end

net=net.*((eye(nodes,nodes)-1)*-1);
   
   for n = 1:10
       
        x = ceil(rand*nodes);
        y = ceil(rand*nodes);
       
        while x == y
            
             y = ceil(rand*nodes);
        end
        
        net(x,y) = 1;
        net(y,x) = 1;
   end
   
   net = net.*((eye(nodes,nodes)-1)*-1);
   
   while nnz(net)/2 < links
       
       edge = ((sum(net))/nodes);
       edge = ((edge.^bias)/(sum(edge.^bias)));
       
       choice = rand;
       
       criterion = 0;
       
       for z = 1:nodes
           criterion = criterion+edge(z);
           
           if choice < criterion
               choice = z;
               break
           end
           
       end
       
        for zd = 1:10000
            
            i = choice;
            
            j = ceil(rand*nodes);
            
            if net(i,j) ==0
                
                net(i,j)=1
                net(j,i)=1
                break
            end
        end
       
   end
   
   net = net.*((eye(nodes,nodes)-1)*-1);
   
   net =(net+net')>0;
   
   subplot(1,3,1)
   hist(sum(net'),10)
   [n,x] = hist(sum(net'),10);
   
   subplot(1,3,2)
   loglog(x,n,'k*')
   axis = 1:100;
   
   subplot(1,3,3)
   t=length(net);
   theta=linspace(0,2*pi,t)';
   xy = [cos(theta), sin(theta)];
   gplot(net,xy);