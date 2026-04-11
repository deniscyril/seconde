// Importation des unités
#import "@preview/unify:0.7.1": num, unit, qty

// --- COULEURS DU THÈME ---
#let c-primary = rgb("#2980b9")
#let c-accent  = rgb("#e74c3c")
#let c-success = rgb("#27ae60")
#let c-bg-gray = rgb("#6b7479")

// --- BOÎTE GÉNÉRIQUE ---
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
      #v(0.5em)
      #body
    ]
  )
}

// --- LIGNES DE RÉPONSE ---
#let lignes_reponse(n) = {
  stack(
    spacing: 1.5em,
    ..range(n).map(_ => line(length: 100%, stroke: (dash: "dotted", paint: gray)))
  )
  v(0.5em)
}

// --- EN-TÊTE DE PAGE (partagé) ---
#let page-header = context {
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
