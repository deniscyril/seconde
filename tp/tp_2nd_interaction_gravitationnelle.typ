#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf

#chapitre[Interaction gravitationnelle et poids]

// ════════════════════════════════════════════════════════════
//  TP n°15 – L'interaction gravitationnelle
//  Bloc : Documents Doc.1 · Doc.2 · Doc.3
// ════════════════════════════════════════════════════════════

// #set page(paper: "a4", margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2cm))
// #set text(font: "Linux Libertine", size: 10.5pt, lang: "fr")
// #set par(justify: true, leading: 0.62em)

// ── Palette de couleurs (reproduit le style original) ────────
#let col-doc   = rgb("#5b9bd5")   // bleu étiquette "Doc."
#let col-border = rgb("#d4a017")  // jaune-or encadré
#let col-red   = rgb("#c0392b")   // rouge annotations
#let col-blue  = rgb("#2980b9")   // bleu annotations
#let col-green = rgb("#27ae60")   // vert annotations
#let col-mat   = rgb("#e8a020")   // orange "Matériel disponible"

// ── Macro : badge "Doc. N  Titre" ────────────────────────────
#let doc-badge(num, title) = {
  box(
    fill: col-doc,
    radius: 2pt,
    inset: (x: 5pt, y: 3pt),
  )[
    #text(fill: white, weight: "bold", size: 9.5pt)[Doc. #num]
  ]
  h(6pt)
  text(weight: "bold")[#title]
}

// ── Macro : encadré avec bord coloré ─────────────────────────
#let bordered-box(body) = block(
  stroke: (paint: col-border, thickness: 1.2pt),
  radius: 3pt,
  inset: 10pt,
  width: 100%,
  body
)

// ════════════════════════════════════════════════════════════
//  Mise en page : deux colonnes
//  Colonne gauche  → Doc.1 + Doc.2
//  Colonne droite  → Doc.3
// ════════════════════════════════════════════════════════════

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,

  // ── COLONNE GAUCHE ─────────────────────────────────────────
  [
    // ── Doc.1 La loi de la gravitation ──────────────────────
    #doc-badge("1", "La loi de la gravitation")
    #v(0.4em)
    #bordered-box[
      La force gravitationnelle entre deux objets A et B
      a pour norme :

      #v(0.8em)

      // Schéma annoté de la formule
      #block(width: 100%)[
        // Ligne d'annotation haute : "Masse de A et B (kg)"
        // #place(top + left, dx: 3.8cm, dy: 0pt)[
        //   #text(fill: col-blue, size: 9pt)[Masse de A et B (kg)]
//        ]

        #v(1.3em)

        // Formule centrale avec annotations latérales
        #grid(
          columns: (auto, 1fr),
          gutter: 0pt,
          // Annotation gauche
          // align(horizon)[
          //   #text(fill: col-red, size: 9pt)[
          //     Force\
          //     gravitationnelle\
          //     (N)
          //   ]
          //   #h(4pt) $——$
          // ],
          // Formule dans un box coloré
          align(center)[
            #h(5.5em)
            #box(
              fill: rgb("#fef9e7"),
              stroke: (paint: col-border, thickness: 0.8pt),
              inset: (x: 8pt, y: 5pt),
              radius: 2pt,
              outset: 5pt
            )[
              $ F = G times display(m_A times m_B) / d^2 $
            ]
          ]
          
        )

        #v(0.8em)
- $m_A$ et $m_B$ : masses en kg de A et B 
-  $G$ est la constante universelle de graviation elle a pour valeur:  $6.67 times 10^(-11) upright("N·m²·kg")^(-2)$
- $d$: distance entre A et B en m
      //   // Annotations basses
      //   #grid(
      //     columns: (1fr, 1fr),
      //     [
      //       #text(fill: rgb("#070707"), size: 8.5pt)[
      //         Constante de gravitation\
      //         universelle\
      //         $G = 6.67 times 10^(-11) upright("N·m²·kg")^(-2)$
      //       ]
      //     ],
      //     [
      //       #text(fill: col-green, size: 8.5pt)[
      //         $d$: Distance entre\
      //         A et B (m)
      //       ]
      //     ]
      //   )
       ]
 ]

    #v(1em)

    // ── Doc.2 Le poids ───────────────────────────────────────
    #doc-badge("2", "Le poids")
    #v(0.4em)
    #bordered-box[
      Le poids d'un objet est une force exprimée
      en newtons qui a pour norme :

      #v(0.8em)

      #grid(
        columns: (auto, 1fr),
        gutter: 0pt,
        //,
        align(horizon)[
          #h(7em)
          #box(
            fill: rgb("#fef9e7"),
            stroke: (paint: col-border, thickness: 0.8pt),
            inset: (x: 8pt, y: 5pt),
            radius: 2pt,
            outset: 5pt,
          )[
            $bold(P) = m times g$
          ]
        ]
      )

      #v(0.7em)
- P: poids en Newton (N)
- m: masse en kg
- g: intensité de pesanteur sur l'astre $upright(N.k g^(-1))$
      // #grid(
      //   columns: (1fr, 1fr),
      //   [
      //     #text(fill: col-blue, size: 8.5pt)[
      //       Masse de l'objet\
      //       (kg)
      //     ]
      //   ],
      //   [
      //     #text(fill: col-green, size: 8.5pt)[
      //       $g$: Intensité de la pesanteur\
      //       sur l'astre (en N·kg#super[-1])
      //     ]
      //   ]
      // )
    ]
  ],

  // ── COLONNE DROITE ─────────────────────────────────────────
  [
    // ── Doc.3 Données ────────────────────────────────────────
    #doc-badge("3", "Données")
    #v(0.4em)
    #bordered-box[
      #align(center)[
        #image("figures/terre.jpg", width: 7cm)
      ]

      #v(0.5em)

      Rayon de la Terre :
      $R_T = 6.37 times 10^3 upright("km")$

      Masse de la Terre :
      $M_T = 5.97 times 10^(24) upright("kg")$

      #v(1em)

      // Encadré "Matériel disponible"
      #block(
        fill: rgb("#fdf0d5"),
        stroke: (paint: col-mat, thickness: 1.2pt),
        radius: 3pt,
        inset: 8pt,
        width: 100%,
      )[
        #text(fill: col-mat, weight: "bold", size: 9.5pt)[
          Matériel disponible
        ]
        #v(0.3em)
        #text(size: 9.5pt)[
          Dynamomètre • Masse $m = 100 upright("g")$ • Balance •
          Smartphone muni de l'application _Phyphox_.
        ]
      ]
    ]
  ]
)
#underline[*Questions :*]

#v(0.4em)

// ── Liste des questions ───────────────────────────────────────
#set enum(numbering: "1.", spacing: 1.3em, indent: 0.5em)

+  Exprimer puis calculer la norme de la force d'attraction
   gravitationnelle exercée par la Terre sur une masse de
   $100 upright("g")$ à l'altitude de la salle de classe.

+  Exprimer le poids de l'objet de masse $100 upright("g")$.

   Mesurer ce poids à l'aide du dynamomètre
   ($P approx 1.0 upright("N")$).
   Comparer avec la valeur calculée à la question 1.

+  À partir des expressions du poids et de la force d'interaction
   gravitationnelle, donner l'expression de l'intensité de la
   pesanteur $g_"théorique"$ en fonction de $G$, $M_T$ et $R_T$.
   Calculer sa norme.

+  Déterminer la valeur de l'intensité de la pesanteur
   $g_"smartphone"$ dans la salle de classe à l'aide de
   l'application _Phyphox_ en allant dans l'onglet
   « Accélération avec g ».

La sonde InSight a atterri sur Mars en novembre 2018.
   Pour maîtriser les paramètres d'atterrissage, les scientifiques
   doivent connaître le poids de la sonde à la surface de cette
   planète. 

5. En utilisant les données ci-dessous, déterminer les caractéristiques du poids $P$ de la
   sonde InSight à la surface de Mars dans le référentiel martien.

//   #v(0.3em)
   #grid(
     columns: (1fr, auto),
     gutter: 1em,
     // Données textuelles
     [
       *Données :*
       #v(0.2em)
       #set list(marker: none, indent: 0pt, spacing: 0.5em)
       - Masse de Mars : $M_M = 6.42 times 10^(23) upright("kg")$
       - Rayon de Mars : $R_M = 3.39 times 10^6 upright("m")$
       - Masse de la sonde InSight : $m = 360 upright("kg")$
     ],
     // Image de la sonde
     [
       #image("figures/insight.jpg", width: 4.5cm)
      //  #align(center)[
      //    #text(size: 8pt, style: "italic")[
      //      Déploiement d'InSight avec le sismomètre SEIS\
      //      au premier plan. CC NASA
      //    ]
      // ]
     ]
   )
#exercice[


La masse du Soleil est $m_1 = 2 times 10^(30) upright("kg")$
et son rayon est de $700 000 upright("km")$.

La masse de la Terre est $m_2 = 6 times 10^(24) upright("kg")$
et son rayon est de $6400 upright("km")$.

Déterminer la force de gravité qui s'exerce entre le Soleil et la Terre,
la Terre est distante du Soleil de $150 000 000 upright("km")$.
]

#exercice[

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
+ Tintin a-t-il raison ?

#v(1em)

// ── Données ──────────────────────────────────────────────────
#underline[Données :]


- Rayon de la Terre:  $R_T = 6400 upright("km")$
- Rayon de la Lune: $R_L = 1740 upright("km")$
- Masse de la Terre: $M_T = 6.0 times 10^(24) upright("kg")$
- Masse de la Lune: $M_L = 7.3 times 10^(22) upright("kg")$
- Masse du capitaine: $75 upright("kg")$

]