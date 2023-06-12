using JuMP, Juniper, Ipopt

nl_solver = optimizer_with_attributes(Ipopt.Optimizer, "print_level"=>0)
minlp_solver = optimizer_with_attributes(Juniper.Optimizer, "nl_solver"=>nl_solver)

model = Model(minlp_solver)

model = Model(Ipopt.Optimizer)


register(model, :max, 2, max; autodiff = true)

@variable(model, 0 <= c[1:10] <=100)


@constraint(model, c1, sum(c)<=100)


m=[1,2,	4,	6,	9,	13,	15,	18,	19,	20]

points(c,m) = [c-m .>=0]' .* [1:10]
JuMP.register(model, :points, 2, points, autodiff=true)

@objective(model, Max, points(c,m))

@NLobjective(model, Max, (max((c[1]-m[1]),0)/(c[1]-m[1])) + (m[2]*(max((c[2]-m[2]),0)/(c[2]-m[2]))) + (m[3]*(max((c[3]-m[3]),0)/(c[3]-m[3]))) + (m[4]*(max((c[4]-m[4]),0)/(c[4]-m[4])))  +
 (m[5]*(max((c[5]-m[5]),0)/(c[5]-m[5]))) + (m[6]*(max((c[6]-m[6]),0)/(c[6]-m[6]))) + (m[7]*(max((c[7]-m[7]),0)/(c[7]-m[7]))) + (m[8]*(max((c[8]-m[8]),0)/(c[8]-m[8]))) +
 (m[9]*(max((c[9]-m[9]),0)/(c[9]-m[9]))) + (m[10]*(max((c[10]-m[10]),0)/(c[10]-m[10])))         )


@NLobjective(model, Max, (m[10]*(max((c[10]-m[10]),0)/(c[10]-m[10])))         )

@NLobjective(model, Max, max(c[10]-m[10],0))

print(model)
optimize!(model)
@show termination_status(model)
@show primal_status(model)
@show dual_status(model)
@show objective_value(model)
@show value.(c)