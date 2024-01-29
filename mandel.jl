f(z, c) = z*z + c

function is_stable(iter, z, c)
    for _ in 1:iter
        if abs(z) > 2
            return false
        end
        z = f(z, c)
    end
    true
end

function mandel(precision, X, Y, f) #https://dev.to/juliapbn/building-fractals-with-the-julia-programming-language-22ao
    Points = Tuple{Float64, Float64}[]
    for x in X
        for y in Y
            z = f(x, y)
            if is_stable(precision, z, z)
                push!(Points, (x, y))
            end
        end
    end
    scatter(Points, markersize=1, size=(750,750),legend=false, showaxis=false, grid=false)
end


mandel(20, -2:0.0025:2, -2:0.0025:2, Complex)