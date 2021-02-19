%part A

clear

x = rand(1,2000);

mean(x)

subplot(1,3,1)

histogram(x)

axis([0 1 0 600])

y=rand(1,2000);

%combine x & y

z = [x;y]; %semicolon says to start a new row

m1 = mean(z);

subplot(1,3,2)

histogram(m1);

axis([0 1 0 600])

m2 = mean(rand(30,2000));

subplot(1,3,3)

histogram(m2);

axis([0 1 0 600]) %scaling

%part B

clear

x1 = (rand(1,2000)*.4);

x2 = (.6+rand(1,2000)*.4);

x = [x1 x2];

subplot(1,3,1)

histogram(x)

y1 = (rand(2,2000)*.4);

y2 = (.6+rand(2,2000)*.4);

y = [mean(y1) mean(y2)];

y = y(randperm(2000));


subplot(1,3,2)

histogram(y)

z1 = (rand(30,2000)*.4);

z2 = (.6+rand(30,2000)*.4);

z = [mean(z1) mean(z2)];

z = z(randperm(2000));

subplot(1,3,3)

histogram(z)

%part C

clear

x1 = (rand(1,2000)*.75);

x2 = (.25+rand(1,2000)*.75);

x = [x1 x2];

subplot(1,3,1)

histogram(x)

axis([0 1 0 300])

y1 = (rand(2,2000)*.95);

y2 = (.05+rand(2,2000)*.95);

y = [mean(y1) mean(y2)];

y = y(randperm(2000));

subplot(1,3,2)

histogram(y)

axis([0 1 0 300])

z1 = (rand(30,2000)*.95);

z2 = (.35+rand(30,2000)*.65);

z = [mean(z1) mean(z2)];

z = z(randperm(2000));

mean(z);

subplot(1,3,3)

histogram(z)

axis([0 1 0 300])
