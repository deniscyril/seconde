//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../_assets/template_evaluation.typ": *

#show: conf

// #identification()
// #entete_eval("Exercices de préparation : Mouvement et vitesse", "")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* Ces exercices ont pour but de préparer l'évaluation sur le mouvement et la vitesse.
  Rédigez soigneusement vos réponses et #underline[soulignez les résultats numériques].
]

//#v(0.5em)

// ══════════════════════════════════════════════════════
//  EXERCICE 1 — Questions de cours et conversions
// ══════════════════════════════════════════════════════

#exercice(points: "4")[
  *Questions de cours et conversions*

  + Qu'est-ce qu'un référentiel ? Donner un exemple de référentiel adapté à l'étude
    du mouvement d'une voiture sur une route.

  + Un point M d'un système passe par les positions $M_1$, $M_2$, $M_3$.
    La durée entre deux positions consécutives est $Delta t = qty("0.25", "s")$.
    - Représenter les points $M_1$, $M_2$, $M_3$ et l'allure du vecteur vitesse
      instantané au point $M_2$, noté $arrow(v)_2$.
    - Donner l'expression littérale de la valeur de $v_2$.

  + Parmi les affirmations suivantes, laquelle (lesquelles) est (sont) incorrecte(s) ?
    Justifier votre réponse.

    #v(0.3em)
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 0.5em,
      box(stroke: 0.5pt, inset: 6pt)[$arrow(v) = 72 "km/h"$],
      box(stroke: 0.5pt, inset: 6pt)[$v = 72 "km/h"$],
      box(stroke: 0.5pt, inset: 6pt)[$v = 20 "m/s"$],
    )
    #v(0.3em)

  + Effectuer les conversions de vitesse suivantes :
    - $qty("54", "km/h")$ en m/s
    - $qty("8.5", "m/s")$ en km/h

  // + Une voiture parcourt $d = qty("450", "km")$ en $t = "3 h 45 min"$.
  //   Calculer sa vitesse moyenne en km/h puis en m/s.

  // + Représenter l'allure de la chronophotographie :
  //   - d'un mouvement rectiligne uniforme,
  //   - d'un mouvement rectiligne accéléré.
]

#v(0.5em)

// ══════════════════════════════════════════════════════
//  EXERCICE 2 — Chronophotographie d'un cycliste
// ══════════════════════════════════════════════════════

#exercice(points: "5")[
  *Chronophotographie d'un cycliste*

  Un cycliste démarre depuis l'arrêt. Une chronophotographie de son mouvement est
  réalisée avec une durée entre deux positions consécutives de
  $Delta t = qty("0.40", "s")$. L'échelle de la figure est : 1 cm ≡ 50 cm en réalité.

  Les positions $B_1$ à $B_6$ sont représentées ci-dessous.

  #v(0.5em)
  #align(center)[
    #canvas(length: 1cm, {
      import draw: *
      // Espacements croissants → mouvement accéléré
      let positions = (0.0, 0.6, 1.8, 3.6, 6.0, 9.0)
      let y = 0.0
      let pts = ($B_1$, $B_2$, $B_3$, $B_4$, $B_5$, $B_6$)
      let n = pts.len()
      for i in range(n) {
        let x = positions.at(i)
        circle((x, y), radius: 0.10,
          stroke: (thickness: 1pt, paint: black), fill: black)
        content((x, y - 0.40), anchor: "center", pts.at(i))
      }
      // Échelle
      line((0.0, -1.0), (1.0, -1.0),
        stroke: (thickness: 1.5pt, paint: black),
        mark: (start: "|", end: "|", fill: black, scale: 0.5))
      content((0.5, -1.38), anchor: "center",
        text(size: 0.75em)[1 cm ≡ 50 cm])
    })
  ]
//  #v(0.5em)

  + Convertir toutes les distances inter-positions en valeurs réelles (en cm puis en m).

    #table(
      columns: (auto, auto, auto, auto, auto),
      stroke: 0.5pt,
      inset: 6pt,
      align: center,
      [*Segment*],    [$B_1 B_2$], [$B_2 B_3$], [$B_3 B_4$], [$B_4 B_5$],
      [*Mesure (cm)*],[0,6 cm],    [1,2 cm],    [1,8 cm],    [2,4 cm],
      [*Réelle (cm)*],[ ],         [ ],         [ ],         [ ],
      [*Réelle (m)*], [ ],         [ ],         [ ],         [ ],
    )

  + Calculer la vitesse moyenne du cycliste entre $B_1$ et $B_6$.

  + Nommer et justifier le type de mouvement observé en vous appuyant sur les
    distances entre les points successifs.

  + Calculer la vitesse instantanée au point $B_3$.
    Sans calculs, comparer la vitesse instantanée en $B_4$ à celle en $B_3$.

  + Représenter l'allure des vecteurs vitesse en $B_2$, $B_3$ et $B_4$,
    en tenant compte de l'évolution de la vitesse au cours du mouvement.
]
