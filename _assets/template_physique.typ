#import "template_base.typ": *

// --- EXERCICES (numérotation en continu ; blocs définition/exemple/travail/important/
// application/expérience proviennent désormais tous de template_base.typ) ---
#let exercice-compteur = counter("exercise")
#let exercice(body) = {
  exercice-compteur.step()
  mbox(
    context [Exercice #exercice-compteur.display()],
    none,
    c-exercice,
    body,
    bg: bg-exercice
  )
}

// --- EN-TÊTE DE CHAPITRE ---
#let chapitre(titre) = {
  pagebreak(weak: true)
  counter(heading).update(0)
  v(0.2cm)
  block(
    width: 100%,
    fill: c-primary,
    radius: 4pt,
    inset: (x: 16pt, y: 10pt),
    text(fill: white, weight: "bold", size: 16pt, font: "Fira Sans")[#titre]
  )
  v(0.4cm)
}

// --- CONFIGURATION GÉNÉRALE ---
#let conf(body) = {
  set page(
    margin: (top: 1cm, bottom: 1.2cm, left: 1.2cm, right: 1.2cm),
    numbering: "1/1",
    header: page-header,
  )
  set text(lang: "fr", font: ("Fira Sans", "Arial", "Linux Libertine"), size: 11pt)
  set par(leading: 0.6em, spacing: 0.85em)
  show math.equation: set text(font: "Fira Math")

  set heading(numbering: (..nums) => {
    let n = nums.pos()
    if n.len() == 1      { numbering("I.", n.last()) }
    else if n.len() == 2 { numbering("1)", n.last()) }
    else                 { numbering("a)", n.last()) }
  })

  show heading.where(level: 1): it => {
    set text(fill: c-primary, font: "Fira Sans", weight: "bold")
    block(above: 0.8em, below: 0.6em, sticky: true)[
      #it
      #v(-0.3em)
      #line(length: 100%, stroke: 1.5pt + c-primary)
    ]
  }

  show heading.where(level: 2): it => {
    set text(fill: c-primary.darken(20%), weight: "semibold")
    pad(left: 1em, it)
  }

  show heading.where(level: 3): it => {
    set text(style: "italic", fill: rgb("#444"))
    pad(left: 2.5em, it)
  }

  body
}
