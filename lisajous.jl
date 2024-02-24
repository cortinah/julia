using Plots


a = [1, 3, 5, 7,  9, 11, 13, 15, 17]
b = [1, 5, 7, 9, 11, 13, 15, 17, 19]
p = []
δ = π/2
t = LinRange(-π, π, 300)

for i ∈ 1:9
    x = sin.(a[i] .* t .+ δ)
    y = sin.(b[i] .* t)
    push!(p, plot(x, y, legend = false, aspect_ratio= :equal))
end

plot(p..., layout=9, size=(800,800))