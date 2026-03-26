//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../_assets/template_evaluation.typ": *

#show: conf

#identification()
#entete_eval("DS: Forces & Principe d'inertie", "15")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* 
  - Si vous bénéficiez d'un PAP vous ne traiterez pas les questions avec la mention *PAP*.
  - Le barème tient compte d'un point de soin (propreté, réponses correctement rédigées et #underline[résultats numériques soulignés])
  - Dans ce devoir, l'intensité de pesanteur vaut: $g=10 $N/kg
]
#exercice(points: "3")[
  + Donner la définition du poids (caractéristiques, formule pour calculer sa valeur et unité de chaque grandeur présente dans la formule).
  + Énoncer sous la forme de phrases le principe d'inertie.
  + *PAP* Donner un exemple de situation dans laquelle le principe d'inertie s'applique alors que le système n'est pas immobile. Préciser dans ce cas, si les forces se compensent ou non.

]
#exercice(points: "3")[
  Une cabine d'ascenseur initialement au rez de chaussé monte au dixième étage. Le système étudié est la cabine et sa masse vaut 250 kg. On admet que le plafond de la cabine est en contact avec un cable qui exerce une force verticale sur la cabine. On admet que la cabine n'est soumise qu'à deux forces. On sépare son mouvement en 3 phases:
- Au début de son mouvement et jusqu'au premier étage son mouvement est rectiligne accéléré. 
-  Après avoir atteint le premier étage, le mouvement de la cabine est rectiligne uniforme jusq'au 9-ième étage.
- Du 9-ième étage au dixième, la cabine ralentie et s'arrête au dixième.

*Questions*

  _Première Phase_
  
  1. Faire un Diagramme objet interaction. 
  2. Les forces se compensent-elles ? Justifier.
  _Deuxième Phase_
  3. Les forces se compensent-elles ?
  4. Calculer la valeur du poids de la cabine.
  5. Schématiser la cabine et les vecteurs forces qui agissent sur elle. Échelle pour les forces: 1cm représente 500 N.
  _Troisième Phase_
  6. *PAP* Sans vous soucier de l'échelle représenter les forces qui agissent sur la cabine durant cette phase.
  
]
#exercice(points: "4")[

Hergé avait imaginé dans les années 1950 les premiers pas de l'homme
sur la Lune avec son Album :
//#v(0.2em)
#text(weight: "bold")[« On a marché sur la Lune ».]
//#v(0.3em)

15 ans plus tard, Armstrong posait le pied sur la Lune…
//#text(style: "italic")[Voir le site www.tintin.be]

#v(0.7em)

// ── Bande dessinée ───────────────────────────────────────────
#align(center)[
  #image("figures/tintin.jpg", width: 100%)
]

#v(0.8em)

// ── Sous-questions ───────────────────────────────────────────
//#set enum(numbering: "a)", spacing: 0.7em, indent: 1em)

+ Calculez la valeur de la force d'attraction gravitationnelle
  entre le capitaine et la Lune.
+ Faire de même pour le capitaine et la Terre.
+ *PAP* Tintin a-t-il raison ? Justifier.

#v(1em)

// ── Données ──────────────────────────────────────────────────
#underline[Données :]

- constante universelle de gravitation: $G = 6,67 times 10^"-11"$
- Rayon de la Terre:  $R_T = 6400 upright("km")$
- Rayon de la Lune: $R_L = 1740 upright("km")$
- Masse de la Terre: $M_T = 6.0 times 10^(24) upright("kg")$
- Masse de la Lune: $M_L = 7.3 times 10^(22) upright("kg")$
- Masse du capitaine: $100 upright("kg")$
]

#exercice(points: "2")[
#figure(grid(columns: (6cm,1fr),align: (top,left) ,
[#image("figures/croix_fer.png",width:5cm)],
[ Un gymnaste se tient immobile en se tenant à 2 anneaux. Le système étudié est le gymnaste, le référentiel est la salle de sport. 
+ Faire un Diagramme objets interactions (chaque anneau est un objet).
+ Schématiser la situation en représentant les vecteurs forces qui agissent sur le système. ]  
 ))

]


// ============================================================
//  EXERCICE 2
// ============================================================

// #exercice(points: "3")[

// +
// #align(center)[
// #canvas(length: 1cm, {
//   import draw: *

//   // Cabine (objet central)
//   rect((-1, -1), (1,1), name: "cabine", stroke: 1pt)
//   content((0, 0), [*Cabine*])

//   // Terre
//   circle((-4, -2.5), radius: 1.0, name: "terre", stroke: 1pt)
//   content((-4, -2.5), [Terre])

//   // Câble
//   circle((4, -2.5), radius: 1.0, name: "cable", stroke: 1pt)
//   content((4, -2.5), [Câble])

//   // Interaction gravitationnelle
//   line((-0.7, -0.7), (-3.3, -1.8),
//        mark: (start: ">", end: ">", size: 0.3),
//        stroke: 1pt)

//   // Interaction contact
//   line((0.7, -0.7), (3.3, -1.8),
//        mark: (start: ">", end: ">", size: 0.3),
//        stroke: 1pt)

// })
// ]

//   La cabine est en interaction avec :
//   - La *Terre* (interaction gravitationnelle) $arrow$ force : poids $arrow(P)$, vertical, vers le bas
//   - Le *Câble* (contact) $arrow$ force : tension $arrow(T)$, vertical, vers le haut

// 2. Durant la première phase, le mouvement est *rectiligne accéléré* : la vitesse augmente.
// D'après la réciproque du *principe d'inertie*, si les forces se compensaient la vitesse serait constante. Ce n'est pas le cas, donc *les forces ne se compensent pas*.
// 3. 
// Le mouvement est *rectiligne uniforme* : la vitesse est constante.
// D'après le *principe d'inertie*, *oui*, les forces se compensent :
// $ arrow(T) + arrow(P) = arrow(0) quad "soit" quad T = P $

// *Question 4 — Calcul du poids*

// $ P = m times g = 250 times 9","8 = underline[2450 "N"] $

// Donc $T = P = underline[2450 "N"]$.

// *Question 5 — Schéma des forces (Échelle : 1 cm → 500 N)*

// Avec l'échelle donnée : $2450 div 500 = 4","9 "cm"$ pour chaque vecteur.

// #align(center)[
// #canvas(length: 1cm, {
//   import draw: *

//   let x0   = -1.5
//   let x1   =  1.5
//   let y0   =  0.0
//   let y1   =  4.0
//   let xmid =  0.0
//   let cx   =  0.0
//   let cy   = (y0 + y1) / 2

//   // Rectangle cabine
//   rect((x0, y0), (x1, y1), stroke: 1.5pt)
//   content((cx, cy), [Cabine])

//   // Câble (segment au-dessus du bord haut)
//   line((xmid, y1), (xmid, y1 + 1.2),
//        stroke: (thickness: 2pt))
//   content((xmid + 0.3, y1 + 0.6), [câble], anchor: "west")

//   // Vecteur T — vers le haut, 4.9 cm
//   line(
//     (xmid, y1),
//     (xmid, y1 + 4.9),
//     mark: (end: ">", size: 0.4),
//     stroke: (paint: blue, thickness: 1.5pt)
//   )
//   content((xmid + 0.25, y1 + 2.45),
//     text(fill: blue)[$arrow(T) = 2450 "N"$],
//     anchor: "west"
//   )

//   // Vecteur P — vers le bas, 4.9 cm, ancré au centre
//   line(
//     (cx, cy),
//     (cx, cy - 4.9),
//     mark: (end: ">", size: 0.4),
//     stroke: (paint: red, thickness: 1.5pt)
//   )
//   content((cx - 0.25, cy - 2.45),
//     text(fill: red)[$arrow(P) = 2450 "N"$],
//     anchor: "east"
//   )

//   // Légende
//   content((cx, y0 - 0.9),
//     text(size: 0.85em)[Échelle : 1 cm $arrow.r$ 500 N])
// })
// ]

// Les deux vecteurs ont la même longueur (4,9 cm) et des sens opposés : les forces se compensent bien.

// === Troisième Phase — Ralentissement (étage 9 → étage 10)

// *Question 6 — Forces agissant sur la cabine*

// Durant cette phase, la cabine monte mais *ralentit* (mouvement rectiligne décéléré).
// D'après le réciproque du principe d'inertie, les forces *ne se compensent pas*.
// La résultante est dirigée vers le bas, donc : $P > T$.

// Les deux forces sont :
// - Le *poids* $arrow(P)$ : vertical, dirigé vers le bas — *plus intense* que $arrow(T)$
// - La *tension* $arrow(T)$ : vertical, dirigé vers le haut — *moins intense* que $arrow(P)$

// Sur le schéma (sans échelle), le vecteur $arrow(P)$ doit être représenté *plus long* que $arrow(T)$.

// ]


