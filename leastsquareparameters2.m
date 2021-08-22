clear all;clc;

x = [1,1;1,2;1,3;1,4]

y = rand(1,4).'

step1 = x.'*x

#Sums of products between each independente variabile in turn and the dependent variable
step2 = x.'*y
step3 = (x.'*x)^-1

#Normal Equation
betaHat = (x.'*x)^-1*(x.'*y)

clf reset

plot (x,y)


hold on

#Evaluates parameters
z = betaHat(1,1)+betaHat(2,1)*x

plot(x,z)

hold

legend("modelo","dados")
