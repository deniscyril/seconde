// Importation des unités
#import "@preview/unify:0.7.1": num, unit, qty

// --- COULEURS DU THÈME ---
#let c-primary = rgb("#2980b9")
#let c-accent  = rgb("#e74c3c")
#let c-success = rgb("#27ae60")
#let c-bg-gray = rgb("#6b7479")

// --- Assombrit une couleur en HSL en gardant sa teinte et sa saturation ---
// (plus vif qu'un .darken() RGB classique, qui désature vers du brun-taupe)
#let vivid-tone(accent, lightness: 38%) = {
  let comp = accent.hsl().components()
  color.hsl(comp.at(0), comp.at(1), lightness)
}

// --- BOÎTE GÉNÉRIQUE ---
// icon: none pour un bloc sans emoji
// dashed: true pour un liseré pointillé (ex. Important, pour capter l'œil)
#let mbox(title, icon, color, body, bg: none, dashed: false) = {
  let title-color = vivid-tone(color)
  let border = if dashed {
    (paint: color, thickness: 4pt, dash: "dotted")
  } else {
    4pt + color
  }
  block(
    width: 100%,
    fill: if bg != none { bg } else { color.lighten(90%) },
    stroke: (left: border),
    radius: (top-right: 6pt, bottom-right: 6pt),
    inset: (x: 0.9em, y: 0.6em),
    breakable: true,
    [
      #text(fill: title-color, weight: "bold", size: 1.1em, font: "Fira Sans")[#if icon != none [#icon #h(0.5em)]#title]
      #v(0.15em)
      #body
    ]
  )
}

// --- PALETTE DES BLOCS (partagée TP / Cours / Évaluations, inspirée Zebra Mildliner) ---
#let c-definition  = rgb("#85D7E2")  // Mild Cyan (set Friendly)
#let c-exemple     = rgb("#FFB2B9")  // Mild Coral Pink (set Friendly)
#let c-travail     = rgb("#F9AB5E")  // Mild Apricot (set Friendly)
#let c-important   = rgb("#FAF667")  // Mild Lemon Yellow (set Friendly)
#let c-application = rgb("#B0E087")  // Mild Green (set Cool & Refined)
#let c-experience  = rgb("#C1AADB")  // Mild Violet (set Cool & Refined)
#let c-exercice    = rgb("#868580")  // Mild Dark Gray (set Friendly) — réservé au bloc Exercice
#let bg-exercice   = rgb("#F3F3F2")

#let définition  = mbox.with("Définition",      emoji.heart, c-definition)                    // seul bloc à garder son emoji
#let exemple     = mbox.with("Exemple",         none,        c-exemple)
#let travail     = mbox.with("Travail à faire", none,        c-travail)
#let important   = mbox.with("Important",       emoji.excl,  c-important, dashed: true)        // liseré pointillé, capte l'œil
#let application = mbox.with("Application",     none,        c-application)
#let experience  = mbox.with("Expérience",      none,        c-experience)

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
