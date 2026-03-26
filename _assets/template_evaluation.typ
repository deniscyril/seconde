#import "@preview/unify:0.7.1": num, unit, qty

// --- COULEURS ET THÈME ---
#let c-primary = rgb("#2980b9")
#let c-accent  = rgb("#e74c3c")
#let c-bg-gray = rgb("#6b7479")

// --- FONCTIONS DE MISE EN PAGE ---
#let mbox(title, icon, color, body) = {
  block(
    width: 100%,
    fill: color.lighten(90%),
    stroke: (left: 4pt + color),
    radius: (top-right: 6pt, bottom-right: 6pt),
    inset: (x: 1em, y: 1em),
    breakable: true,
    [
      #text(fill: color, weight: "bold", size: 1.1em, font: "Fira Sans")[#icon #h(0.5em) #title]
      #body
    ]
  )
}

// Identification compacte
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
    [*PAP :* ⬜︎ ]
  )
  v(0.5cm)
}

// Titre encadré et centré
#let eval_titre(titre) = {
  align(center)[
    #rect(stroke: 1.5pt + c-primary, inset: 10pt, radius: 2pt)[
      #text(size: 14pt, weight: "bold", fill: c-primary)[#titre]
    ]
  ]
  v(0.5cm)
}

// Grille de notation — défini AVANT entete_eval qui l'utilise
#let note(sur) = {
  align(right)[
    #rect(inset: 8pt, stroke: 0.5pt + gray)[
      #text(size: 12pt)[*Note :* #h(1cm) / #sur]
    ]
  ]
}

// En-tête d'évaluation : titre + note côte à côte
#let entete_eval(titre, sur) = {
  grid(
    columns: (1fr, 1fr),
    align: (left + top, right + top),
    eval_titre(titre),
    note(sur)
  )
}

// --- GESTION DES EXERCICES ---
#let exercice-compteur = counter("exercise")

#let exercice(points: none, body) = {
  exercice-compteur.step()
  context {
    let titre = "Exercice " + exercice-compteur.display()
    if points != none { titre += " (" + points + " pts)" }
    mbox(titre, "📋", rgb("#8e44ad"), body)
  }
}

#let lignes_reponse(n) = {
  stack(
    spacing: 1.5em,
    ..range(n).map(_ => line(length: 100%, stroke: (dash: "dotted", paint: gray)))
  )
  v(0.5em)
}

// --- CONFIGURATION DU DOCUMENT ---
#let conf(body) = {
  set page(
    margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
    numbering: "1/1",
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 9pt, fill: gray)
        grid(
          columns: (1fr, 1fr),
          align(left)[Physique-Chimie - Lycée Dumézil],
          align(right)[M. Denis]
        )
        v(-5pt)
        line(length: 100%, stroke: 0.5pt + gray)
      }
    }
  )
  set text(lang: "fr", font: ("Fira Sans", "Arial", "Linux Libertine"), size: 11pt)
  show math.equation: set text(font: "Fira Math") // corrigé
  set heading(numbering: "1.a)")
  show heading.where(level: 1): it => {
    set text(fill: c-primary, weight: "bold")
    block(below: 0.8em)[#it #v(-0.3em) #line(length: 100%, stroke: 1.5pt + c-primary)]
  }
  body
}