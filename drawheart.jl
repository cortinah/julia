using Plots

f(x) = ((exp(1))/3)*((π-(x^2))^(1/2))*sin(a*π*x) + ((x^2)^(1/3))
a = 15

plot(f, -sqrt(π) , sqrt(π), legend=:false, showaxis=:false, grid= :false, color=:red, size=(800,800), width=4)


# limits sqrt(pi)
#plot(-1.771:0.001:1.771,f.(-1.771:0.001:1.771))


f(x) = sqrt(3.1-(x^2))*sin(45*x) + (x^2)^(1/3)

f(x) = (x^2)^(1/3) + sin(45*x)*sqrt(3.1-(x^2))

plot(f, -sqrt(π) , sqrt(π), legend=:false, showaxis=:false, grid= :false, color=:red, size=(800,800), width=4)