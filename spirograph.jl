using Plots
function spirograph(R, r, rho, color=:blue)
    f(t) = (R-r) * cos(t) + rho * cos((R-r)/r * t)
    g(t) = (R-r) * sin(t) - rho * sin((R-r)/r * t)
  
    plot(f, g, 0, max((R-r)/r, r/(R-r))*2pi, aspect_ratio=:equal, color=color,
     legend=:false, showaxis=false, grid=false)
  end

  spirograph( 1, 3/4, 1/4)

  spirograph(1, 1/2, 1/4)

  spirograph(1, 1/4, 1)

  spirograph(1, 1/8, 1/4)
  spirograph(1, 1/512, 1/1, :red)