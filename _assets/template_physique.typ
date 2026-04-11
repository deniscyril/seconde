#import "template_base.typ": *

// --- BLOCS SPÉCIFIQUES AUX COURS ---
#let définition  = mbox.with("Définition",      emoji.heart,    c-accent)
#let exemple     = mbox.with("Exemple",         emoji.bubble,   c-success)
#let travail     = mbox.with("Travail à faire", emoji.pencil,   c-bg-gray)
#let important   = mbox.with("Important",       emoji.excl,     rgb("#d35400"))
#let application = mbox.with("Application",     emoji.wrench,   c-primary)
#let experience  = mbox.with("Expérience",      emoji.testtube, rgb("#ec98b3"))

// --- EXERCICES ---
#let exercice-compteur = counter("exercise")
#let exercice(body) = {
  exercice-compteur.step()
  mbox(
    context [Exercice #exercice-compteur.display()],
    emoji.basketball,
    rgb("#8e44ad"),
    body
  )
}

// --- EN-TÊTE DE CHAPITRE ---
#let chapitre(titre) = {
  pagebreak(weak: true)
  counter(heading).update(0)
  v(0.5cm)
  block(
    width: 100%,
    fill: c-primary,
    radius: 4pt,
    inset: 20pt,
    text(fill: white, weight: "bold", size: 18pt, font: "Fira Sans")[#titre]
  )
  v(1cm)
}

// --- CONFIGURATION GÉNÉRALE ---
#let conf(body) = {
  set page(
    margin: (top: 1cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
    numbering: "1/1",
    header: page-header,
  )
  set text(lang: "fr", font: ("Fira Sans", "Arial", "Linux Libertine"), size: 11pt)
  show math.equation: set text(font: "Fira Math")

  set heading(numbering: (..nums) => {
    let n = nums.pos()
    if n.len() == 1      { numbering("I.", n.last()) }
    else if n.len() == 2 { numbering("1)", n.last()) }
    else                 { numbering("a)", n.last()) }
  })

  show heading.where(level: 1): it => {
    set text(fill: c-primary, font: "Fira Sans", weight: "bold")
    block(below: 1em, sticky: true)[
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
