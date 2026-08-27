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
    text(fill: white, weight: "bold", size: 14pt)[Titrage colorimétrique — Fiche de révision],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Première Spécialité],
  )
]
#v(0.4em)

// ════════════════════════════════════════════════════════════════════════════
#grid(columns: (1fr, 1fr), gutter: 1em)[

// ── COLONNE GAUCHE ───────────────────────────────────────────────────────────

= Espèces titrée et titrante

#retenir[
  - *Espèce titrée A* : concentration $C_A$ *inconnue* — prélevée à la pipette jaugée (volume $V_A$)
  - *Espèce titrante B* : concentration $C_B$ *connue* — versée par la burette graduée
]

= Réaction de titrage

#retenir[
  La réaction doit être :
  - *Totale* — va jusqu'à épuisement du réactif limitant
  - *Rapide* — instantanée à chaque ajout
  - *Unique* — pas de réaction parasite

  En Première : c'est toujours une réaction *d'oxydoréduction*.
]

= Permanganate — auto-indicateur

#formule[
  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.25em),
    [Ions $"MnO"_4^-$], [*violet intense*],
    [Ions $"Mn"^(2+)$], [*incolores* (produit)],
  )

  - *Avant $V_E$ :* tout $"MnO"_4^-$ versé est consommé → solution incolore
  - *À $V_E$ :* premier excès non consommé → *rose pâle persistant*
  - *Après $V_E$ :* couleur violette qui s'intensifie
]

= Empois d'amidon (indicateur)

#formule[
  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.25em),
    [En présence de $"I"_2$], [*bleu-noir*],
    [En absence de $"I"_2$], [*incolore*],
  )

  Utilisé quand $"I"_2$ est titré ou titrant. Le changement à $V_E$ est *brusque* et *persistant*.
]

][

// ── COLONNE DROITE ───────────────────────────────────────────────────────────

= Équivalence et réactif limitant

#retenir[
  L'*équivalence* est atteinte quand A et B ont réagi en proportions stœchiométriques.

  #table(
    columns: (1.6fr, 2fr),
    align: (center, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.25em),
    [$V_B < V_E$], [B limitant — consommé en entier],
    [$V_B = V_E$], [A et B épuisés → *équivalence*],
    [$V_B > V_E$], [A limitant — épuisé, B en excès],
  )
]

= Relation à l'équivalence

#formule[
  Pour $a A + b B arrow.r$ produits :

  $ n_A / a = n_B / b $

  Avec $n_A = C_A V_A$ et $n_B = C_B V_E$ :

  $ (C_A V_A) / a = (C_B V_E) / b $

  $ arrow.r C_A = a/b times (C_B V_E) / V_A $
]

= Démarche complète

#methode[
  + Identifier A (titré) et B (titrant) ; noter $C_B$
  + Écrire la réaction de titrage et relever $a$ et $b$
  + Lire le volume équivalent $V_E$ (changement de couleur)
  + Appliquer : $C_A = display(a/b times (C_B V_E) / V_A)$

  *Exemple :* titrage de $"Fe"^(2+)$ ($a=5$) par $"MnO"_4^-$ ($b=1$) :
  $V_A = qty("10", "mL")$, $C_B = qty("1,0e-2", "mol/L")$, $V_E = qty("12,5", "mL")$

  $ C_A = 5 times (1,0 times 10^(-2) times 12,5 times 10^(-3)) / (10,0 times 10^(-3)) = qty("6,3e-2", "mol/L") $
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
    columns: (2fr, 3.5fr, 0.8fr),
    align: (left, left, center),
    stroke: (x, y) => if y == 0 { (bottom: 1pt + rgb("#2980b9")) } else { none },
    inset: (x: 0.4em, y: 0.3em),
    [*Notion*], [*À retenir*], [*Exos*],
    [Espèce titrée A], [$C_A$ inconnue · pipette jaugée ($V_A$)], [1, 2],
    [Espèce titrante B], [$C_B$ connue · burette graduée], [1, 2],
    [Réaction de titrage], [Totale, rapide, unique (redox)], [1, 2, 3],
    [Volume équivalent $V_E$], [Volume versé à l'équivalence (changement de couleur)], [3, 4, 5],
    [Relation à l'équivalence], [$C_A V_A \/ a = C_B V_E \/ b$], [3, 4, 5, 6, 7],
    [Permanganate auto-indicateur], [Rose pâle persistant à $V_E$ ($"MnO"_4^-$ violet → $"Mn"^(2+)$ incolore)], [3, 4, 5],
    [Empois d'amidon], [Bleu-noir avec $"I"_2$ · incolore sans $"I"_2$], [6, 7],
  )
]
