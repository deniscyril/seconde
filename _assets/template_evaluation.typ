#import "template_base.typ": *

// --- IDENTIFICATION ---
#let identification() = {
  grid(
    columns: (1.2fr, 1.2fr, 0.6fr),
    gutter: 15pt,
    align: bottom,
    grid(
      columns: (auto, 1fr),
      column-gutter: 4pt,
      align: bottom,
      [*NOM :*],
      line(length: 100%, stroke: 0.5pt)
    ),
    grid(
      columns: (auto, 1fr),
      column-gutter: 4pt,
      align: bottom,
      [*Prénom :*],
      line(length: 100%, stroke: 0.5pt)
    ),
    [*PAP :* ⬜︎]
  )
  v(0.5cm)
}

// --- TITRE D'ÉVALUATION ---
#let eval_titre(titre) = {
  align(center)[
    #rect(stroke: 1.5pt + c-primary, inset: 10pt, radius: 2pt)[
      #text(size: 14pt, weight: "bold", fill: c-primary)[#titre]
    ]
  ]
  v(0.5cm)
}

// --- GRILLE DE NOTATION ---
#let note(sur) = {
  align(right)[
    #rect(inset: 8pt, stroke: 0.5pt + gray)[
      #text(size: 12pt)[*Note :* #h(1cm) / #sur]
    ]
  ]
}

// --- EN-TÊTE D'ÉVALUATION ---
#let entete_eval(titre, sur) = {
  grid(
    columns: (1fr, 1fr),
    align: (left + top, right + top),
    eval_titre(titre),
    note(sur)
  )
}

// --- EXERCICES (avec points optionnels) ---
#let exercice-compteur = counter("exercise")

#let exercice(points: none, body) = {
  exercice-compteur.step()
  context {
    let titre = "Exercice " + exercice-compteur.display()
    if points != none { titre += " (" + points + " pts)" }
    mbox(titre, "📋", rgb("#8e44ad"), body)
  }
}

// --- CONFIGURATION DU DOCUMENT ---
#let conf(body) = {
  set page(
    margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
    numbering: "1/1",
    header: page-header,
  )
  set text(lang: "fr", font: ("Fira Sans", "Arial", "Linux Libertine"), size: 11pt)
  show math.equation: set text(font: "Fira Math")
  set heading(numbering: "1.a)")
  show heading.where(level: 1): it => {
    set text(fill: c-primary, weight: "bold")
    block(below: 0.8em)[#it #v(-0.3em) #line(length: 100%, stroke: 1.5pt + c-primary)]
  }
  body
}
