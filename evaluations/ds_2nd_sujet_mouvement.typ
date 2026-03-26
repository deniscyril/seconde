//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../_assets/template_evaluation.typ": *

#show: conf

#identification()
#entete_eval("Évaluation : Mouvement et vitesse", "15")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* Si vous bénéficiez d'un PAP vous ne traiterez pas l'exercice 3.
  Le barème tient compte d'un point de soin (propreté, réponses correctement rédigées
  et #underline[résultats numériques soulignés])
]

#v(0.5em)

#exercice(points: "3")[
  *Question de cours*

  + Donne la définition d'un référentiel.

  + Un système se déplace en passant par les points $M_1$, $M_2$, $M_3$.
    La durée entre deux points consécutifs est $Delta t$.
    - Représenter les points $M_1$, $M_2$, $M_3$ ainsi que l'allure du vecteur vitesse
      instantané au point $M_1$ qu'on notera $arrow(v)_1$
    - Donner l'expression littérale de la valeur de $v_1$.

  + Pourquoi l'expression $arrow(v_1) = 3 "km/h"$ n'est-elle pas correcte ?

  + Représente l'allure de la chronophotographie d'un mouvement rectiligne uniforme.
]

#exercice(points: "3")[
  *Calcul de vitesse*

  Un sprinteur parcourt $d = qty("100", "m")$ en un temps $t = qty("9.81", "s")$.

  + Rappeler la formule de la vitesse moyenne.

  + Calculer sa vitesse en m/s (arrondir à $10^(-1)$).

  + Convertir ce résultat en km/h.
]

#exercice(points: "4")[
  On étudie le mouvement d'un point M d'un système. Une chronophotographie a été
  réalisée et figure ci-dessous. Sur cette figure 1 cm correspond à 1 cm en réalité.
  La durée entre 2 positions successives vaut $qty("0.50", "s")$.

  #align(center)[
    #canvas(length: 1cm, {
      import draw: *
      // Points M1 à M5 avec espacements décroissants (mouvement rectiligne ralenti)
      let positions = (0.0, 2.0, 3.6, 4.8, 5.6)
      let y = 0.0
      let pts = ($M_1$, $M_2$, $M_3$, $M_4$, $M_5$)
      let n = pts.len()
      for i in range(n) {
        let x = positions.at(i)
        circle((x, y), radius: 0.10,
          stroke: (thickness: 1pt, paint: black), fill: black)
        content((x, y - 0.40), anchor: "center", pts.at(i))
      }
    })
  ]

  + En considérant le trajet $M_1 arrow.r M_5$, mesurer la distance totale parcourue.

  + Déterminer la durée totale du mouvement. En déduire la vitesse moyenne du
    système en cm/s puis en m/s.

  + Nommer ce mouvement et justifier votre réponse en vous appuyant sur les distances
    entre les points successifs.

  + Sans calculs, comparer les vitesses instantanées en $M_1$ et en $M_4$. Que peut-on en conclure
    sur l'évolution de la vitesse au cours du mouvement ?

  + Représenter sans souci d'échelle l'allure des vecteurs vitesses en chaque point
    de la chronophotographie, en tenant compte de l'évolution de la vitesse.
]

#exercice(points: "5")[
  On observe à l'aide d'une chronophotographie le mouvement d'un caillou lâché sans
  vitesse initiale dans l'air à la position $A_1$. La durée entre deux positions
  successives est $Delta t = qty("0.20", "s")$.

  #grid(
    columns: (1fr, auto),
    gutter: 1em,
    [
      + Quelle est la distance réelle parcourue par le caillou dans l'air ?

      + Calculer la vitesse moyenne sur le trajet allant de $A_1$ jusqu'à $A_5$.

      + Nommer le mouvement sur la phase $A_1 arrow.r A_5$. Justifier brièvement
        votre réponse.

      + Calculer la vitesse instantanée au point $A_3$.

      + Représenter sur la figure ci-contre le vecteur vitesse $arrow(v)_3$.
        Préciser l'échelle des vitesses choisie.

      + Nommer le mouvement sur la phase $A_6 arrow.r A_11$. Justifier brièvement
        votre réponse.
    ],
    // ── Chronophotographie ──
    canvas(length: 1cm, {
      import draw: *

      // Positions verticales — air (espacements croissants) puis eau (réguliers)
      let y5  = 0.0
      let y4  = y5  + 1.8
      let y3  = y4  + 1.2
      let y2  = y3  + 0.8
      let y1  = y2  + 0.5
      let dy_eau = 0.7
      let y6  = y5  - 1.2
      let y7  = y6  - dy_eau
      let y8  = y7  - dy_eau
      let y9  = y8  - dy_eau
      let y10 = y9  - dy_eau
      let y11 = y10 - dy_eau

      let x_pts = 1.2
      let r = 0.18

      // Zones colorées
      rect((-0.8, y1 + 0.6), (3.2, 0.0), fill: white, stroke: none)
      rect((-0.8, 0.0), (3.2, y11 - 0.6), fill: rgb("#ddeeff"), stroke: none)

      // Ligne interface air/eau
      line((-0.8, 0), (3.2, 0),
        stroke: (thickness: 1.5pt, paint: black))

      // Labels
      content((-0.3,  0.45), text(style: "italic")[air])
      content((-0.3, -0.45), text(style: "italic")[eau])

      // Points A1 à A11
      let pts = (
        (x_pts, y1,  $A_1$),
        (x_pts, y2,  $A_2$),
        (x_pts, y3,  $A_3$),
        (x_pts, y4,  $A_4$),
        (x_pts, y5,  $A_5$),
        (x_pts, y6,  $A_6$),
        (x_pts, y7,  $A_7$),
        (x_pts, y8,  $A_8$),
        (x_pts, y9,  $A_9$),
        (x_pts, y10, $A_10$),
        (x_pts, y11, $A_11$),
      )
      for (px, py, lbl) in pts {
        circle((px, py), radius: r,
          stroke: (thickness: 1pt, paint: black), fill: white)
        content((px + r + 0.15, py), anchor: "west", lbl)
      }

      // Axe directionnel (tirets)
      line((x_pts, y1 + 0.4), (x_pts, y11 - 0.4),
        stroke: (thickness: 0.6pt, paint: gray, dash: "dashed"),
        mark: (end: "stealth", fill: gray, scale: 0.6))

      // Échelle
      let sx = -0.5
      let sy = y11 - 0.6
      line((sx, sy), (sx + 1.0, sy),
        stroke: (thickness: 1.5pt, paint: black),
        mark: (start: "|", end: "|", fill: black, scale: 0.5))
      content((sx + 0.5, sy - 0.38), anchor: "center",
        text(size: 0.75em)[1 cm ≡ 40 cm])
    })
  )
]
