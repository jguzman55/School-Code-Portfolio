x = 10;

for n = 1:10 %does something 10 times
    x=x+1
end

f=12;

while x < 25 %while x is less than 25, it'll continue running it
    x=x+1
end

%question 3

j=[2 4 7 9];

for n =  1:10
    j =j+1; %adds 1 to each number in our vector
end

while rand <.9
    j=j+1;
end

%question 4
t=0;
v = rand(1,6);

v = v/sum(v)

%sum(v)

while max(v) < 0.95
    t=t+1;
    v=v-0.1;
    v=v/sum(v);
    allv(t,:)= v;
end

plot(allv)

%question 5

w = rand(8,4)*10-5; %baby neural net

for r=1:10
    input = rand(1,8);
    output = input*w;
    %accummulate the outputs
    alloutput(r,:) = output;
    
end

mesh(alloutput)