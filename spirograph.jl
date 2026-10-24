using Plots
function spirograph(R, r, rho, color=:blue)
    f(t) = (R-r) * cos(t) + rho * cos((R-r)/r * t)
    g(t) = (R-r) * sin(t) - rho * sin((R-r)/r * t)
  
    plot(f, g, 0, max((R-r)/r, r/(R-r))*2pi, aspect_ratio=:equal, color=color,
<<<<<<< HEAD
     legend=:false, showaxis=false, grid=false, size=[500,500])
=======
     legend=false, showaxis=false, grid=false)
>>>>>>> 1479b5daed1dd4f8fff9daa3076d7538b7576b5c
  end

  spirograph( 1, 3/4, 1/4)

  spirograph(1, 1/2, 1/4)

  spirograph(1, 1/4, 1)

  spirograph(1, 1/8, 1/4, :red)
  spirograph(1, 1/512, 1/1, :red)
  spirograph(1, 1/64, 1/382, :blue)
  spirograph(1, 1, 1/2, :purple)
  spirograph(2, 1/5, 1/7)