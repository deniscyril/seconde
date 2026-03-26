#import "../_assets/template_evaluation.typ": *
#import "@preview/cetz:0.3.2": canvas, draw
#show: conf

// ── Style général ──────────────────────────────────────────────────
#set page(margin: 2cm)
#set text(font: "Linux Libertine", size: 11pt)
#set par(justify: true)

#show heading.where(level: 1): it => block(
  fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%,
  text(fill: white, weight: "bold", size: 12pt, it.body)
)
#show heading.where(level: 2): it => text(weight: "bold", style: "italic", it.body)

// Commande pratique : résultat encadré
#let res(x) = box(stroke: 0.8pt, inset: (x: 4pt, y: 2pt), radius: 2pt)[#underline[#x]]

// ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 14pt, weight: "bold")[Corrigé — Évaluation : Mouvement et vitesse]
]
#v(0.4cm)

// ══════════════════════════════════════════════════════════════════
= Exercice 1 — Question de cours (3 pts)

*1. Définition d'un référentiel*

Un référentiel est un solide de référence (ou objet) par rapport auquel on décrit le mouvement d'un système, associé à un repère d'espace et à une horloge.

*2. Représentation et expression de $arrow(v)_1$*

Les trois points $M_1$, $M_2$, $M_3$ sont placés sur la trajectoire. Le vecteur vitesse instantanée $arrow(v)_1$ en $M_1$ est tangent à la trajectoire en $M_1$, orienté dans le sens du mouvement, et de valeur :

$ v_1 = frac(M_1 M_2, Delta t) $

#align(center)[
  #canvas({
    import draw: *
    let pts = (0.5, 2.5, 5.0)
    line((-0.3,0),(6.2,0), stroke:(dash:"dashed", paint:gray), mark:(end:"stealth"))
    for (i, x) in pts.enumerate() {
      circle((x,0), radius:0.1, fill:black)
      content((x,-0.4), $M_{#(i+1)}$)
    }
    line((0.5,0),(0.5+1.5,0), stroke:(thickness:1.5pt, paint:rgb("#2c5f8a")),
      mark:(end:"stealth", fill:rgb("#2c5f8a")))
    content((1.25, 0.35), text(fill:rgb("#2c5f8a"))[$arrow(v)_1$])
  })
]

*3. Pourquoi $vec(v)_1 = 3 "km/h"$ est incorrect ?*

Un vecteur vitesse possède une direction, un sens et une valeur (norme). L'écriture $vec(v)_1 = 3 "km/h"$ n'est pas correcte car elle n'indique qu'une valeur scalaire : elle omet la direction et le sens. De plus, on ne peut pas affecter un nombre scalaire à un vecteur avec le signe « = ».

*4. Chronophotographie d'un mouvement rectiligne uniforme*

Points régulièrement espacés, alignés sur une droite :

#align(center)[
  #canvas({
    import draw: *
    let dx = 1.4
    line((-0.3,0),(8.5,0), stroke:(dash:"dashed", paint:gray), mark:(end:"stealth"))
    for i in range(6) {
      circle((i*dx, 0), radius:0.1, fill:black)
      content((i*dx,-0.4), $M_{#(i+1)}$)
    }
    line((0,0.5),(dx,0.5), stroke:0.5pt, mark:(start:"|",end:"|"))
    content((dx/2, 0.8), text(size:0.8em)[égaux])
  })
]

// ══════════════════════════════════════════════════════════════════
= Exercice 2 — Calcul de vitesse (3 pts)

*1. Formule de la vitesse moyenne*

$ v_"moy" = frac(d, t) $

où $d$ est la distance parcourue et $t$ la durée du trajet.

*2. Calcul en m/s*

$ v_"moy" = frac(100 "m", 9.81 "s") approx #res[$10.2 "m/s"$] $

*3. Conversion en km/h*

$ v_"moy" = 10.2 times 3.6 approx #res[$36.7 "km/h"$] $

// ══════════════════════════════════════════════════════════════════
= Exercice 3 — Mouvement rectiligne ralenti (4 pts)

_Rappel : échelle 1:1. $Delta t = 0.50 "s"$._
_Positions lues sur la chronophotographie (en cm) : $M_1 = 0$ ; $M_2 = 2.0$ ; $M_3 = 3.6$ ; $M_4 = 4.8$ ; $M_5 = 5.6$_

*1. Distance totale parcourue de $M_1$ à $M_5$*

$ d = 5.6 - 0 = #res[$5.6 "cm"$] $

*2. Durée totale et vitesse moyenne*

Il y a 4 intervalles entre $M_1$ et $M_5$, chacun de durée $Delta t = 0.50 "s"$ :

$ t = 4 times 0.50 = #res[$2.0 "s"$] $

$ v_"moy" = frac(5.6 "cm", 2.0 "s") = #res[$2.8 "cm/s"$] = #res[$0.028 "m/s"$] $

*3. Nature du mouvement*

Les espacements entre points successifs sont :
- $M_1 M_2 = 2.0$ cm
- $M_2 M_3 = 1.6$ cm
- $M_3 M_4 = 1.2$ cm
- $M_4 M_5 = 0.8$ cm

Les espacements *diminuent régulièrement* (de 0,4 cm à chaque intervalle). Il s'agit d'un *mouvement rectiligne uniformément ralenti* (décélération constante).

*4. Comparaison des vitesses instantanées en $M_1$ et $M_4$*

L'écart entre deux points consécutifs est plus grand autour de $M_1$ que autour de $M_4$. Donc la vitesse instantanée en $M_1$ est *plus grande* qu'en $M_4$. On conclut que la vitesse *diminue* au cours du mouvement : le système ralentit.

*5. Vecteurs vitesses*

Les vecteurs vitesses sont tangents à la trajectoire (horizontaux), orientés dans le sens du mouvement (de $M_1$ vers $M_5$), et de longueur *décroissante* :

#align(center)[
  #canvas({
    import draw: *
    let positions = (0.0, 2.0, 3.6, 4.8, 5.6)
    // vitesses approchées par demi-intervalles (proportionnelles)
    let speeds = (2.0, 1.8, 1.4, 1.0, 0.7)
    let scale = 0.6
    let bleu = rgb("#2c5f8a")

    line((-0.5,0),(8.0,0), stroke:(dash:"dashed", paint:gray), mark:(end:"stealth"))

    for i in range(5) {
      let x = positions.at(i)
      let v = speeds.at(i) * scale
      circle((x,0), radius:0.08, fill:black)
      content((x,-0.45), $M_{#(i+1)}$)
      line((x,0),(x+v,0), stroke:(thickness:1.5pt, paint:bleu),
        mark:(end:"stealth", fill:bleu))
    }
    content((7.0, 0.5), text(size:0.8em, fill:bleu)[Vecteurs décroissants de $M_1$ à $M_5$])
  })
]

// ══════════════════════════════════════════════════════════════════
= Exercice 4 — Synthèse (5 pts)

_Rappel : 1 cm sur la figure = 40 cm en réalité. $Delta t = 0.20 "s"$._

Les positions sont lues sur la figure (repère vers le bas depuis $A_1$) :

#align(center)[
  #table(
    columns: (auto,)*12,
    stroke: 0.5pt,
    inset: 5pt,
    align: center,
    [Point], $A_1$, $A_2$, $A_3$, $A_4$, $A_5$, $A_6$, $A_7$, $A_8$, $A_9$, $A_10$, $A_11$,
    [Pos. fig. (cm)], [0], [0,5], [1,3], [2,5], [4,3], [5,5], [6,2], [6,9], [7,6], [8,3], [9,0],
  )
]

*1. Distance réelle dans l'air ($A_1 arrow.r A_5$)*

Sur la figure : $d_"fig" = 4.3 "cm"$ #h(1em) Distance réelle : $d = 4.3 times 40 = #res[$172 "cm" = 1.72 "m"$]$

*2. Vitesse moyenne $A_1 arrow.r A_5$*

$ t = 4 times 0.20 = 0.80 "s" $

$ v_"moy" = frac(172 "cm", 0.80 "s") = #res[$215 "cm/s" = 2.15 "m/s"$] $

*3. Nature du mouvement $A_1 arrow.r A_5$*

Les espacements entre points successifs sont : 0,5 ; 0,8 ; 1,2 ; 1,8 cm — croissants. Il s'agit d'un *mouvement rectiligne uniformément accéléré* : le caillou accélère sous l'effet de la pesanteur.

*4. Vitesse instantanée en $A_3$*

Méthode des points encadrants :

$ v_3 = frac(A_2 A_4, 2 Delta t) $

Distance $A_2 A_4$ sur la figure : $(1.2 + 1.8) = 3.0 "cm"$ → réelle : $3.0 times 40 = 120 "cm"$

$ v_3 = frac(120 "cm", 2 times 0.20 "s") = #res[$300 "cm/s" = 3.0 "m/s"$] $

*5. Représentation du vecteur $arrow(v)_3$*

Vecteur dirigé vers le bas, tangent en $A_3$. Échelle choisie : *1 cm ≡ 2 m/s* → longueur $= 3.0 / 2 = 1.5 "cm"$.

#align(center)[
  #canvas(length:1cm, {
    import draw: *
    let x = 1.2
    let bleu = rgb("#2c5f8a")
    circle((x, 0), radius:0.08, fill:black)
    content((x+0.35, 0.15), $A_3$)
    line((x, 0),(x, -1.5), stroke:(paint:bleu, thickness:1.5pt),
      mark:(end:"stealth", fill:bleu))
    content((x+0.55, -0.75), text(fill:bleu, weight:"bold")[$arrow(v)_3$])
    content((x+3.5, -0.75), [Échelle : 1 cm ≡ 2 m/s])
  })
]

*6. Nature du mouvement $A_6 arrow.r A_{11}$*

Les espacements entre $A_6$ et $A_{11}$ sont tous égaux à 0,7 cm sur la figure. Il s'agit d'un *mouvement rectiligne uniforme* : dans l'eau, les forces s'équilibrent et la vitesse reste constante.

#pagebreak()

// ══════════════════════════════════════════════════════════════════
#align(center)[
  #text(size: 14pt, weight: "bold")[Barème détaillé — Évaluation : Mouvement et vitesse]
]
#v(0.4cm)

#table(
  columns: (auto, 1fr, auto),
  inset: 8pt,
  stroke: 0.5pt,
  align: (center, left, center),
  fill: (x, y) => if y == 0 { rgb("#2c5f8a") } else if calc.even(y) { white } else { gray.lighten(90%) },

  // En-tête
  [*Question*], [*Critères et éléments de réponse attendus*], [*Points*],

  // EXERCICE 1
  table.cell(colspan: 3, fill: gray.lighten(50%))[*Exercice 1 — Question de cours (3 pts)*],
  [1.1], [Définition complète : solide de référence + repère d'espace + horloge.], [0,5],
  [1.2], [Expression correcte $v_1 = (M_1 M_2) / (Delta t)$ + schéma (tangence, sens du mouvement).], [1,0],
  [1.3], [Argument clair : un vecteur ne se réduit pas à un scalaire (direction et sens manquants).], [0,5],
  [1.4], [Schéma : points alignés avec espacements rigoureusement égaux.], [1,0],

  // EXERCICE 2
  table.cell(colspan: 3, fill: gray.lighten(50%))[*Exercice 2 — Calcul de vitesse (3 pts)*],
  [2.1], [Formule littérale $v = d / t$ correctement citée.], [0,5],
  [2.2], [Calcul détaillé + résultat $10.2 "m/s"$ + unité.], [1,5],
  [2.3], [Conversion par le facteur 3,6 + résultat cohérent ($36.7 "km/h"$).], [1,0],

  // EXERCICE 3
  table.cell(colspan: 3, fill: gray.lighten(50%))[*Exercice 3 — Mouvement rectiligne ralenti (4 pts)*],
  [3.1], [Lecture correcte de la distance totale ($d = 5.6$ cm).], [0,5],
  [3.2], [Durée totale (4 intervalles × 0,50 s) + calcul $v_"moy"$ avec unités (cm/s et m/s).], [1,0],
  [3.3], [Identification : espacements décroissants → mouvement rectiligne ralenti. Justification appuyée sur les valeurs mesurées.], [1,0],
  [3.4], [Comparaison qualitative correcte : $v_1 > v_4$ → la vitesse diminue au cours du mouvement.], [0,5],
  [3.5], [Vecteurs horizontaux, orientés dans le sens du mouvement, longueurs strictement décroissantes de $M_1$ à $M_5$.], [1,0],

  // EXERCICE 4
  table.cell(colspan: 3, fill: gray.lighten(50%))[*Exercice 4 — Synthèse (5 pts)*],
  [4.1], [Application correcte de l'échelle ($4.3 times 40 = 172$ cm) + unité.], [0,5],
  [4.2], [Calcul de la durée (4 intervalles) + vitesse moyenne correcte avec unités.], [1,0],
  [4.3], [Mouvement rectiligne uniformément accéléré, justifié par l'espacement croissant entre points.], [0,5],
  [4.4], [Méthode des points encadrants clairement posée + application de l'échelle + résultat $3.0 "m/s"$.], [1,5],
  [4.5], [Vecteur $arrow(v)_3$ vertical vers le bas, échelle précisée, longueur cohérente (1,5 cm pour 3,0 m/s).], [1,0],
  [4.6], [Mouvement rectiligne uniforme dans l'eau, justifié par l'espacement constant entre points.], [0,5],

  // TOTAL
  table.cell(colspan: 2, align: right)[*Total de l'évaluation*], [*15 pts*],
)

#v(0.5cm)
#block(
  inset: 10pt,
  radius: 4pt,
  stroke: 0.8pt + rgb("#2c5f8a"),
  fill: rgb("#f0f7ff")
)[
  *Notes pour la correction :*
  - *Unités :* Retirer $0.25$ pt par unité manquante ou erronée (maximum $-1$ pt par copie).
  - *Chiffres significatifs :* Tolérance d'un chiffre significatif ; valoriser la cohérence globale.
  - *Vecteurs :* La flèche sur le symbole vecteur ($arrow(v)$) est obligatoire.
  - *Exercice 3 (PAP) :* Les élèves dispensés ne traitent pas cet exercice ; le total est ramené à 11 pts puis converti sur 15.
]
