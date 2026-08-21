#let button(x)= [
  #set text(font: "Movement", fill: rgb("f5f5f5"))
  #let c_up = rgb("#a81f3d")
  #let c_down = rgb("#780422")
  #set page(fill: none, background: align(horizon + center)[#rect(width: 100% - 1pt, height: 100% - 1pt, fill: gradient.linear(dir: ttb, c_up, c_down), radius: 2pt, stroke: 1pt + c_up)], height: 1.5em, width: auto)
  #x
]
