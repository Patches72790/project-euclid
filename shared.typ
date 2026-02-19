#import "@preview/cetz:0.4.2": *

#let dot(var, radius: 0.05, fll: black) = {
  import draw: *

  circle(var, radius: radius, fill: fll)
}



#let line-numbers(body) = {
  set par.line(numbering: "1", numbering-scope: "page")
  set text(font: "Libertinus Serif", lang: "el", size: 11pt)

  body
}

#let proposition(title, greek, notes, diagram) = {
  pagebreak(to: "even")
  block()[
    == #title
  ]

  // Top half greek text
  block(height: 45%, width: 100%)[
    #set par.line(numbering: "1")
    #set text(font: "Libertinus Serif", lang: "el", size: 11pt)
    #greek
  ]

  line(length: 100%, stroke: 0.5pt)
  // Bottom half commentary

  block(height: 45%, width: 100%)[
    #set text(size: 9pt)
    #notes
  ]

  pagebreak(to: "odd")

  align(center + horizon)[
    #v(2em)
    #block(width: 80%, align(center + horizon, diagram))
  ]
}
