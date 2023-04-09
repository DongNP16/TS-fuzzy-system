function memfunc
N = 501;
minX1= 0.1;
maxX1= 0.9;
minX2= 0.2;
maxX2= 0.6;
x1 = linspace(minX1,maxX1,N);
x2 = linspace(minX2,maxX2,N);

A1 = trimf(x1,[0.1 0.1 0.9]);
B1 = trimf(x1,[0.1 0.9 0.9]);
A2 = trimf(x2,[0.2 0.2 0.6]);
B2 = trimf(x2,[0.2 0.6 0.6]);

%fig1
subplot(2,2,1);plot(x1,A1)
hold on
subplot(2,2,1);plot(x1,B1)
title('The linguistic fuzzy sets F^1_{ik}')
legend('Fuzzy set F^1_{i0}','Fuzzy set F^1_{i1}')
ylabel('Degree of Membership')

%fig2
subplot(2,2,3);plot(x2,A2)
hold on
subplot(2,2,3);plot(x2,B2)
title('The linguistic fuzzy sets F^2_{ik}')
legend('Fuzzy set F^2_{i0}','Fuzzy set F^2_{i1}')
ylabel('Degree of Membership')
