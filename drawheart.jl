using Plots

f(x) = ((x^2)^(1/3))+((exp(1))/3)*((π-(x^2))^(1/2))*sin(a*π*x)
a = 30

plot(f, -sqrt(π) , sqrt(π))


# limits sqrt(pi)
plot(-1.771:0.001:1.771,f.(-1.771:0.001:1.771))
