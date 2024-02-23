using Plots


a = [1,3,5,13]
b = [1,5,7,15]
p = []
δ = π/2
t = LinRange(-π, π, 300)

for i ∈ 1:4
    x = sin.(a[i] .* t .+ δ)
    y = sin.(b[i] .* t)
    push!(p, plot(x, y, legend = false, aspect_ratio= :equal))
end

plot(p..., layout=4, size=(600,600))