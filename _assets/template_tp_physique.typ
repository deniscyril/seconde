// Template des sujets de TP : reprend template_physique.typ
// en remplaçant les titres de niveau 1 par une version compacte (sans trait, espacement réduit).
#import "template_physique.typ": *
#import "template_physique.typ" as physique

#let conf(body) = {
  show: physique.conf

  show heading.where(level: 1): it => block(above: 0.9em, below: 0.5em, sticky: true,
    text(fill: c-primary, font: "Fira Sans", weight: "bold", size: 1.1em)[
      #if it.numbering != none [#counter(heading).display(it.numbering) ]#it.body
    ])

  body
}
