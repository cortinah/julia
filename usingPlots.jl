using Plots
#unicodeplots()
scatter(1:10, 20:-2:1)

function bet(funds::Float64, bet::Float64)
    odds = 0.9 * funds / (funds + bet)

    if odds > rand()
        return (funds + bet)
    else
        return (funds - bet)
    end
end

function path(funds=100.0, betsize=1.0)
    fundspath = Float64[]
    push!(fundspath, funds)
    while (funds > 0.0 && funds < 250.0)
        funds = bet(funds, betsize)
        push!(fundspath, funds)
    end
    return (fundspath)
end