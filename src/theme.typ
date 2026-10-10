#let button(x, gradient-top: rgb("#a81f3d"), gradient-bottom: rgb("#780422"), font: "Movement")= [
  #set text(font: font, fill: rgb("f5f5f5"), size: 12pt)
  #let c_up = gradient-top
  #let c_down = gradient-bottom
  #set page(fill: none, background: align(horizon + center)[#rect(width: 100% - 1pt, height: 100% - 1pt, fill: gradient.linear(dir: ttb, c_up, c_down), radius: 2pt, stroke: 1pt + c_up)], height: 20pt, width: auto)
  #pad(left: 2pt, right: 2pt)[#x]
]
