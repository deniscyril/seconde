#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP Principe d'Inertie et Curling]

*Situation*
- Le système étudié est la pierre de curling et le référentiel est la piste en glace. 
- Les frottements sont négligés. On admet que la force exercée par la glace est verticale.
#v(1cm)
// ════════════════════════════════════════════════════════════════
//  PARAMÈTRES DE LA CHRONOPHOTOGRAPHIE
//  Échelle : 1 cm sur le doc = 1 m en réalité
//  Durée entre 2 points : 0,5 s
//
//  Phase accélérée (5 points → 4 intervalles)
//  Loi du MRUA : les écarts successifs forment une progression
//  arithmétique de raison a*T² (croissance régulière).
//  Valeurs choisies : écarts = 0.5 | 1.0 | 1.5 | 2.0  cm
//
//  Phase uniforme (6 points → 5 intervalles)
//  Écart constant : 2.5 cm
// ════════════════════════════════════════════════════════════════

// --- Coordonnées x des points (en cm depuis l'origine) ---
// Phase accélérée
#let x1 = 0.0
#let x2 = 0.5          // +0.5
#let x3 = 1.5          // +1.0
#let x4 = 3.0          // +1.5
#let x5 = 5.0          // +2.0  ← dernier point accéléré

// Trait séparateur à x5
#let xsep = x5

// Phase uniforme (écart constant = 2.5 cm)
#let x6  =  7.5
#let x7  = 10.0
#let x8  = 12.5
#let x9  = 15.0
#let x10 = 17.5
#let x11 = 20.0

// Dimensions de la figure
#let figW = 21.0   // cm – largeur totale
#let figH = 3.4    // cm – hauteur du bloc figure
#let yDot = 2.1    // cm – ordonnée des points depuis le haut
#let rDot = 3pt    // rayon des points

// Séparateur vertical
#let sepTop    = 0.7   // cm
#let sepBottom = 2.7   // cm

// ── Titre et discipline ──────────────────────────────────────────
#grid(
  columns: (1fr, auto),
  align(center)[#underline[*Lancé d'une pierre de curling*]],
 // align(right)[_Physique – 2#super[nde]_]
)

#v(1.5em)

// ── Chronophotographie ───────────────────────────────────────────
#block(width: figW * 1cm, height: figH * 1cm, clip: false)[

  // ── Points ────────────────────────────────────────────────────
  #for xp in (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11) {
    place(top + left, dx: xp * 1cm, dy: yDot * 1cm,
      circle(radius: rDot, fill: black)
    )
  }

  // ── Trait vertical séparateur (rouge) ─────────────────────────
  #place(top + left, dx: xsep * 1cm)[
    #line(
      start: (0pt, sepTop * 1cm),
      end:   (0pt, sepBottom * 1cm),
      stroke: (paint: red, thickness: 1pt)
    )
  ]

  // ── Flèche double ↔ pour la phase accélérée ───────────────────
  #let arrowY  = 0.15cm   // cm : ordonnée de la ligne de flèche
  #let labelY  = 0.4cm    // cm : ordonnée du texte d'étiquette
  #let tipSize = 4pt

  // ligne horizontale
  // #place(top + left, dx: x1 * 1cm, dy: arrowY)[
  //   #line(
  //     start: (0pt, 0pt),
  //     end:   ((xsep - x1) * 1cm, 0pt),
  //     stroke: .7pt
  //   )
  // ]
  // pointe gauche
  // #place(top + left, dx: x1 * 1cm, dy: arrowY)[
  //   #line(start: (0pt, 0pt), end: ( tipSize,  tipSize), stroke: 0.7pt)
  //   #line(start: (0pt, 0pt), end: ( tipSize, -tipSize), stroke: 0.7pt)
  // ]
  // pointe droite
  // #place(top + left, dx: xsep * 1cm, dy: arrowY)[
  //   #line(start: (0pt, 0pt), end: (-tipSize,  tipSize), stroke: 0.7pt)
  //   #line(start: (0pt, 0pt), end: (-tipSize, -tipSize), stroke: 0.7pt)
  // ]
  // étiquette phase accélérée
  #place(top + left, dx: x1 * 1cm, dy: labelY)[
    #box(width: (xsep - x1) * 1cm)[
      #align(center)[_phase de lancé_]
    ]
  ]

  // ── Flèche simple → pour la phase uniforme ────────────────────
  #place(top + left, dx: xsep * 1cm, dy: arrowY)[
    #line(
      start: (0pt, 0pt),
      end:   ((x11 - xsep) * 1cm, 0pt),
      stroke: .7pt
    )
  ]
  // pointe droite seulement
  #place(top + left, dx: x11 * 1cm, dy: arrowY)[
    #line(start: (0pt, 0pt), end: (-tipSize,  tipSize), stroke: 0.7pt)
    #line(start: (0pt, 0pt), end: (-tipSize, -tipSize), stroke: 0.7pt)
  ]
  // étiquette phase uniforme
  #place(top + left, dx: xsep * 1cm, dy: labelY)[
    #box(width: (x11 - xsep) * 1cm)[
      #align(center)[_la pierre est abandonnée_]
    ]
  ]

  // ── Légende ───────────────────────────────────────────────────
  #place(bottom, dy: 20pt)[
    #set text(size: 10pt)
    #align(left)[
      Échelle : $1 upright("cm") arrow.l.r 1 upright("m")$ \
      durée entre 2 points successifs : $0.5 upright("s")$
    ]
  ]
]

// ── Questions ────────────────────────────────────────────────────────────────
#v(3em)
#underline[*Questions*]

#v(0.5em)

#set enum(numbering: "1 –", spacing: 1.1em)

+ Comment s'appelle le mouvement correspondant à la phase de lancé ?

+ Comment s'appelle le mouvement correspondant à la phase où la pierre est abandonnée ?

+ Pour chacune des phases, réaliser un DOI (Diagramme Objets Interactions).

+ Pour chaque phase, schématiser les forces qui s'exercent sur la pierre.

+ Est-il nécessaire qu'une force pousse la pierre pour que celle-ci avance ?

+ En utilisant le principe d'inertie, que peut-on dire des forces qui agissent sur la pierre lorsque celle-ci est en mouvement rectiligne uniforme ? 
+ Même question que précédement en ce qui concerne la phase de lancé.

#align(center)[
  #image("figures/exos_principe_inertie.png", width: 115%)
]