#import "../../_assets/template_evaluation.typ": *

// ───────── aides locales (reprises de la fiche puissances10_unites) ─────────
#let blanc(w: 2.2cm) = box(width: w, height: 1em, stroke: (bottom: 0.6pt + gray))

#let cbox = box(width: 0.75em, height: 0.75em, stroke: 0.55pt + black, baseline: 0.08em)

#let qcm-opt(letter, content) = [#cbox #h(3pt) #letter) #content]

#let extable(rows) = text(size: 9.6pt)[#table(
  columns: (1.4em, 1fr, auto),
  stroke: 0.5pt + rgb("#bfbfbf"),
  inset: (x: 5pt, y: 3.5pt),
  align: (center + horizon, left + horizon, center + horizon),
  table.header(
    table.cell(colspan: 2)[*Question*], [*Réponse*]
  ),
  ..rows.map(r => (text(weight: "bold")[#r.at(0)], r.at(1), r.at(2))).flatten()
)]

#let side-by-side(a, b) = grid(columns: (1fr, 1fr), column-gutter: 10pt, a, b)

#let calcbox(n, eq) = block(
  stroke: 0.5pt + rgb("#bfbfbf"),
  fill: rgb("#fafafa"),
  inset: (x: 8pt, top: 6pt, bottom: 8pt),
  radius: 2pt,
  width: 100%,
  breakable: false,
)[
  #grid(
    columns: (1.4em, 1fr),
    column-gutter: 4pt,
    align: (left + top, center + horizon),
    text(weight: "bold")[#n.],
    align(center)[#text(size: 11.5pt)[#eq]]
  )
  #v(3pt)
  #align(center)[#text(size: 9pt)[Résultat (bon nb de CS) :] #blanc(w: 3cm)]
]

#let calcgrid(..boxes) = grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt, row-gutter: 8pt, ..boxes)

#show: conf

#identification()
#eval_titre("Évaluation : Puissances de 10, unités et chiffres significatifs")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :*
  - Durée : 25 minutes.
  - Calculatrice autorisée (utiliser la touche $times 10^x$ pour saisir une puissance de 10).
  - Les réponses sont écrites directement sur cette feuille, dans les cases prévues.
  - Sauf indication contraire, exprimer le résultat d'un calcul avec le nombre de chiffres significatifs adapté.
]

#exercice[
  *Puissances de 10*

  #side-by-side(
    extable((
      (1, [Écrire en écriture décimale : $10^3$], [#blanc()]),
      (2, [Écrire en écriture décimale : $10^(-2)$], [#blanc()]),
      (3, [Écrire en écriture scientifique : 32 000], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    )),
    extable((
      (4, [Écrire en écriture scientifique : 0,0054], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
      (5, [Calculer, sous la forme $10^upright(?)$ : $10^4 times 10^3$], [#blanc(w: 1.3cm)]),
      (6, [_(un peu difficile)_ Calculer, sous la forme $10^upright(?)$ : $(10^2)^3 / 10^4$], [#blanc(w: 1.3cm)]),
    )),
  )
]

#exercice[
  *Convertir les unités avec les préfixes*

  #side-by-side(
    extable((
      (1, [Convertir 45 mm en m], [#blanc(w: 2.4cm)]),
      (2, [Convertir 2,5 kJ en J], [#blanc(w: 2.4cm)]),
      (3, [Convertir 330 µA en A], [#blanc(w: 2.4cm)]),
    )),
    extable((
      (4, [Convertir 0,8 GHz en Hz], [#blanc(w: 2.4cm)]),
      (5, [_(un peu difficile)_ Convertir 650 ns en s, en écriture scientifique], [#blanc(w: 2.4cm)]),
    )),
  )
]

#exercice[
  *Chiffres significatifs et présentation d'un résultat*

  #side-by-side(
    extable((
      (1, [Combien de chiffres significatifs a *0,0250* ?], [#blanc(w: 1.2cm)]),
      (2, [Combien de chiffres significatifs a *5,0 × $10^4$* ?], [#blanc(w: 1.2cm)]),
    )),
    extable((
      (3, [Combien de chiffres significatifs a *408* ?], [#qcm-opt("a", "1") #h(0.2cm) #qcm-opt("b", "3") #linebreak() #qcm-opt("c", "2") #h(0.2cm) #qcm-opt("d", "4")]),
    )),
  )

  #v(6pt)
  _Effectue chaque calcul à la calculatrice, puis recopie le résultat avec le bon nombre de chiffres significatifs._
  #v(4pt)

  #calcgrid(
    calcbox(4, $3,2 times 4,15$),
    calcbox(5, [_(un peu difficile)_ $(4,0 times 10^2 + 6,0 times 10^2) / (2,0 times 10^1)$]),
  )
]
