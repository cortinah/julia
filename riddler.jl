using QuantEcon, DataFrames

function ittib(v::Vector)
    x,y,z=v[1],v[2],v[3]
    while x < 2023
        x,y,z = y, z, x+y+z
    end
    return (if (x==2023) true else false end)
end

v = gridmake(1:10,1:10,1:10)
v = DataFrame(v, :auto)

v[:, "trib"] .=false




for i in (1:size(v,1))
    v[i,4] = ittib(collect(v[i,1:3]))
end

filter(:trib => x -> x==true, v)


# display series for checking
function tib(v::Vector)
    x,y,z=v[1],v[2],v[3]
    while x < 2023
        x,y,z = y, z, x+y+z
        println(x)
    end
    return (if (x==2023) true else false end)
end