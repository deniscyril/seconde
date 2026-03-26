//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../_assets/template_evaluation.typ": *

#show: conf

#identification()
#entete_eval("DS: Forces & Principe d'inertie", "15")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* Si vous bénéficiez d'un PAP vous ne traiterez pas les questions avec la mention *PAP*.
  Le barème tient compte d'un point de soin (propreté, réponses correctement rédigées
  et #underline[résultats numériques soulignés])
]
#exercice(points: "3")[
  + Donner la définition du poids (caractéristiques, formule pour calculer sa valeur et unité de chaque grandeur présente dans la formule).
  + Énoncer sous la forme de phrases le principe d'inertie.
  + *PAP* Donner un exemple de situation dans laquelle le principe d'inertie s'applique alors que le système n'est pas immobile. Préciser dans ce cas, si les forces se compensent ou non.

]

#exercice(points: "2")[
  Une voiture est garée dans une rue en pente. On modélise la voiture par un point matériel de masse 750 kg. On admet que g=10 N/kg. Le système étudié est la voiture.
  + Faire un Diagramme objet interaction. 
  + Schématiser sans souci d'échelle les forces qui agissent sur la voiture.

]
#exercice(points: "6")[
  Une cabine d'ascenseur initialement au rez de chaussé monte au dixième étage. Le système étudié est la cabine et sa masse vaut 250 kg. On admet que le plafond de la cabine est en contact avec un cable qui exerce une force verticale sur la cabine. On admet que la cabine n'est soumise qu'à deux forces. On sépare son mouvement en 3 phases:
- Au début de son mouvement et jusqu'au premier étage son mouvement est rectiligne accéléré. 
-  Après avoir atteint le premier étage, le mouvement de la cabine est rectiligne uniforme jusq'au 9-ième étage.
- Du 9-ième étage au dixième, la cabine ralentie et s'arrête au dixième.
L'intensité de pesanteur g a pour valeur 10 N/kg.

*Questions*

  _Première Phase_
  
  1. Faire un Diagramme objet interaction. 
  2. Les forces se compensent-elles ? Justifier.
  _Deuxième Phase_
  3. Les forces se compensent-elles ? Justifier.
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
- La constante universelle de gravitation vaut $G= 6,67 times 10^"-11"$

- Rayon de la Terre:  $R_T = 6400 upright("km")$
- Rayon de la Lune: $R_L = 1740 upright("km")$
- Masse de la Terre: $M_T = 6.0 times 10^(24) upright("kg")$
- Masse de la Lune: $M_L = 7.3 times 10^(22) upright("kg")$
- Masse du capitaine: $100 upright("kg")$
]

