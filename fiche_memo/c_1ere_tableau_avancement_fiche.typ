#import "../_assets/template_physique.typ": *

// ── Mise en page compacte ────────────────────────────────────────────────────
#show: conf
#set page(margin: (top: 0.8cm, bottom: 1cm, left: 1.2cm, right: 1.2cm))
#set text(size: 10pt)
#set block(spacing: 0.6em)
#show heading.where(level: 1): it => block(above: 0.8em, below: 0.4em, sticky: true)[
  #set text(fill: rgb("#2980b9"), weight: "bold", size: 11pt)
  #it
  #v(-0.3em)
  #line(length: 100%, stroke: 1.5pt + rgb("#2980b9"))
]
#show heading.where(level: 2): it => block(above: 0.5em, below: 0.2em)[
  #set text(fill: rgb("#2980b9").darken(20%), weight: "semibold", size: 10.5pt)
  #pad(left: 0.8em, it)
]

// ── Boîtes compactes ─────────────────────────────────────────────────────────
#let fbox(color, body) = block(
  width: 100%, breakable: true,
  fill: color.lighten(90%),
  stroke: (left: 3pt + color),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 0.8em, y: 0.5em),
  body
)
#let formule(body) = fbox(rgb("#2980b9"), body)
#let retenir(body) = fbox(rgb("#d35400"), body)
#let methode(body) = fbox(rgb("#27ae60"), body)

// ── En-tête ──────────────────────────────────────────────────────────────────
#block(
  width: 100%, fill: rgb("#2980b9"), radius: 4pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(columns: (1fr, auto),
    text(fill: white, weight: "bold", size: 14pt)[Tableau d'avancement — Fiche de révision],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Première Spécialité],
  )
]
#v(0.4em)

// ════════════════════════════════════════════════════════════════════════════
#grid(columns: (1fr, 1fr), gutter: 1em)[

// ── COLONNE GAUCHE ───────────────────────────────────────────────────────────

= Avancement $x$

#retenir[
  - $x$ (en *mol*) mesure la progression de la réaction
  - $x = 0$ à l'état initial
  - $x = x_f$ à l'état final
]

= Structure du tableau d'avancement

Pour $a A + b B arrow.r c C + d D$ :

#formule[
  #table(
    columns: (1.6fr, 1fr, 1.4fr, 1.4fr, 1.2fr, 1.2fr),
    align: center,
    inset: (x: 0.3em, y: 0.3em),
    stroke: 0.5pt + rgb("#2980b9").lighten(40%),
    [*État*], [$x$], [$n_A$], [$n_B$], [$n_C$], [$n_D$],
    [Initial], [$0$], [$n_(A,0)$], [$n_(B,0)$], [$0$], [$0$],
    [Interméd.], [$x$], [$n_(A,0)#h(0pt)-a x$], [$n_(B,0)#h(0pt)-b x$], [$c x$], [$d x$],
    [Final], [$x_f$], [$...$], [$...$], [$...$], [$...$],
  )
  - Réactifs : $n_0 - "coeff" times x$ (décroît)
  - Produits : $"coeff" times x$ (croît depuis 0)
  - Toutes les quantités sont *positives ou nulles*
]

= Avancement maximal $x_"max"$

#methode[
  Pour chaque réactif, résoudre : $n_0 - "coeff" times x = 0$

  $ x = n_0 / "coeff" $

  $x_"max"$ = *plus petite* des valeurs obtenues
]

*Exemple :* $"CH"_4 + 2"O"_2 arrow.r ...$ avec $n_0("CH"_4)=3$ mol, $n_0("O"_2)=3$ mol

$"CH"_4$ : $x = (3)/(1) = 3$ mol $quad$ ; $quad "O"_2$ : $x = (3)/(2) = 1,5$ mol

$arrow.r x_"max" = 1,5$ mol (réactif limitant : $"O"_2$)

][

// ── COLONNE DROITE ───────────────────────────────────────────────────────────

= Réactif limitant

#retenir[
  Le *réactif limitant* est le réactif entièrement consommé en premier ($n = 0$ à $x_"max"$).

  Sa disparition *impose l'arrêt* de la réaction.
]

= Mélange stœchiométrique

#formule[
  Le mélange est *stœchiométrique* si tous les réactifs sont consommés simultanément :

  $ n_(A,0) / a = n_(B,0) / b $

  Dans ce cas, tous les réactifs sont limitants.
]

= Transformation totale / non totale

#retenir[
  #table(
    columns: (1.2fr, 2.5fr),
    align: (center, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.3em),
    [*Totale*], [$x_f = x_"max"$ → au moins 1 réactif épuisé],
    [*Non totale*], [$x_f < x_"max"$ → aucun réactif épuisé],
  )

  En Première : *toutes les transformations sont supposées totales* sauf indication contraire.
]

= Démarche complète

#methode[
  + Écrire l'équation et identifier les réactifs
  + Calculer $n_0$ de chaque réactif
  + Construire le tableau (état initial, intermédiaire, final)
  + Trouver $x_"max"$ → identifier le réactif limitant
  + Substituer $x_f = x_"max"$ pour obtenir l'état final
]

]

// ── Tableau récapitulatif ─────────────────────────────────────────────────────
#v(0.4em)
#block(width: 100%, fill: rgb("#2980b9").lighten(90%),
  stroke: (left: 3pt + rgb("#2980b9")),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 0.8em, y: 0.6em),
)[
  #text(fill: rgb("#2980b9"), weight: "bold")[Toutes les notions du chapitre]
  #v(0.3em)
  #table(
    columns: (2fr, 3fr, 0.8fr),
    align: (left, left, center),
    stroke: (x, y) => if y == 0 { (bottom: 1pt + rgb("#2980b9")) } else { none },
    inset: (x: 0.4em, y: 0.3em),
    [*Notion*], [*À retenir*], [*Exos*],
    [Avancement $x$], [$x = 0$ initial · $x = x_f$ final · en mol], [1, 2],
    [Quantité d'un réactif], [$n_0 - "coeff" times x >= 0$], [1, 2, 3],
    [Quantité d'un produit], [$"coeff" times x$], [1, 2, 3],
    [Avancement maximal], [$x_"max"$ = plus petite valeur annulant un réactif], [2, 3, 4],
    [Réactif limitant], [Réactif épuisé en premier ($n = 0$ à $x_"max"$)], [2, 3, 4, 5],
    [Mélange stœchiom.], [$n_(A,0) \/ a = n_(B,0) \/ b$], [3, 6],
    [Transformation totale], [$x_f = x_"max"$ — applicable en Première], [tous],
    [Transformation non totale], [$x_f < x_"max"$ — aucun réactif épuisé], [7],
  )
]
