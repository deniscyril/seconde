#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf

// Bloc de signalement figure
#let figure_placeholder(description) = block(
  width: 100%,
  fill: rgb("#fffbea"),
  stroke: (paint: rgb("#f0c040"), dash: "dashed", thickness: 1.5pt),
  radius: 4pt,
  inset: (x: 1em, y: 0.8em),
  [
    #text(fill: rgb("#b8860b"), weight: "bold", size: 0.95em)[
      ✏️  Figure à insérer
    ]
    #v(0.3em)
    #text(fill: rgb("#555"), size: 0.9em, style: "italic")[#description]
  ]
)

#chapitre[Description de la Matière]

= Découverte de l'atome

#important[
  - *~1900* : Thomson découvre l'*électron*
  - *1905* : Jean Perrin apporte la preuve de l'existence de l'*atome*
  - *1911* : Rutherford découvre le *noyau* de l'atome
  - *~1930* : Découverte du *proton*
]

= Constitution de l'atome

== Les particules constituantes

#définition[
  Un atome est constitué de :
  - Un *noyau* contenant des *protons* et des *neutrons* (appelés collectivement *nucléons*)
  - Des *électrons* qui sont autour du noyau

  #v(0.6em)
  #figure_placeholder[
    Schéma d'un atome : noyau central (protons + neutrons) entouré de 3 couches
    électroniques concentriques ($n=1$, $n=2$, $n=3$) avec des électrons ($e^-$) sur chaque couche.
  ]
]

#align(center)[
  #table(
    columns: (1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.5pt,
    fill: (col, row) => if row == 0 { c-primary.lighten(80%) }
                        else if calc.rem(row, 2) == 1 { white }
                        else { rgb("#f9f9f9") },
    table.header(
      [*Particule*], [*Masse (kg)*], [*Charge électrique*]
    ),
    [Proton #linebreak() #text(size: 9pt, fill: c-success, style: "italic")[(nucléon)]],
    [$1,673 times 10^(-27)$], [$+e$],
    [Neutron #linebreak() #text(size: 9pt, fill: c-success, style: "italic")[(nucléon)]],
    [$1,675 times 10^(-27)$], [$0$],
    [Électron], [$9,11 times 10^(-31)$], [$-e$],
  )
]

#important[
-  La *charge élémentaire* vaut : $e = 1,60 times 10^(-19) "C"$ (Coulomb). C'est la charge portée par un proton. L'électron porte une charge opposée. 
- Dans un atome il y a autant d'électrons que de protons.
- La chage électrique d'un atome vaut 0 C, on dit qu'il est neutre.]

EXERCICE 9 p 60
== Remarques sur la masse

#important[
  - On fait l'approximation : $m_"proton" approx m_"neutron" approx m_"nucléon" = 1,67 times 10^(-27) "kg"$
  - Un nucléon est *1 000 fois plus lourd* qu'un électron
  - Nous allons vérifier que lors du calcul de la masse d'un atome, on peut toujours *négliger* la masse des électrons devant celle du noyau.
]

*EXERCICE 1*

= Représentation symbolique du noyau

#définition[
  Un noyau d'atome est représenté par l'écriture:
   $ " "_Z ^A X $
  #v(0.4em)


  - $X$ : symbole de l'élément chimique (ex : H, O, N, C)
  - $Z$ : *numéro atomique* = nombre de protons
  - $A$ : *nombre de masse* = nombre de nucléons
  - Nombre de *neutrons* $= A - Z$
]

#application[
  + Écrire la composition du noyau de $attach(C, tl: 14, bl: 6)$
  + Écrire la représentation symbolique d'un noyau contenant 13 protons et 14 neutrons

  *Correction :*
  + $Z = 6$ protons ; $A = 14$ nucléons ; neutrons $= 14 - 6 = 8$
  + Nucléons $= 13 + 14 = 27$ ; numéro atomique $= 13$ → $attach("Al", tl: 27, bl: 13)$
]

*EXERCICE 2*
= Taille, masse et charge de l'atome

== Taille de l'atome

#important[
  #grid(columns: (1fr, 1fr), gutter: .5em,
    [
      - Taille d'un atome : $tilde.op 10^(-10)$ m
      - Taille du noyau : $tilde.op 10^(-15)$ m
      - Le noyau est *100 000 fois* plus petit que l'atome
    ],
    [ #image("figures/ordre-grandeur-atome.png",width:90%) ]
    // block(
    //   width: 5cm,
    //   fill: rgb("#fffbea"),
    //   stroke: (paint: rgb("#f0c040"), dash: "dashed", thickness: 1.5pt),
    //   radius: 4pt,
    //   inset: 0.6em,
    //   [
    //     
    //     ]
    //   ]
    // )
  )
]

== Masse de l'atome

#définition[
  En négligeant la masse des électrons :

  $ m_"atome" = A times m_"nucléon" $

  où $A$ est le nombre de masse.
]

*EXERCICE 3*
== Charge de l'atome et d'un ion

#définition[
   - Un atome qui *gagne* un ou plusieurs électrons devient un *anion* (ion négatif)
  - Un atome qui *perd* des électrons devient un *cation* (ion positif)

]

#exemple[
  *Anions* (charge négative — gagnent des électrons) :
  - $"Cl"^-$ : ion chlorure ; $"SO"_4^(2-)$ : ion sulfate ; $"NO"_3^-$ : ion nitrate

  *Cations* (charge positive — perdent des électrons) :
  - $"Na"^+$ : ion sodium ; $"Ca"^(2+)$ : ion calcium ; $"K"^+$ : ion potassium
]

= Structure électronique des atomes

== Couches et sous-couches

#définition[
  Les électrons se répartissent sur des *couches électroniques* numérotées $n = 1, 2, 3, dots$

  Chaque couche contient des *sous-couches* nommées $s$ et $p$ :
  - Sous-couche $s$ : au maximum *2 électrons*
  - Sous-couche $p$ : au maximum *6 électrons*

  #v(0.6em)
 #align(center)[#image("figures/Energy_level_diagram-fr.png",width:40%)]
  *Règles de remplissage :*
  + Par $n$ croissant (couche 1 avant couche 2, etc.)
  + La sous-couche $s$ avant la sous-couche $p$

  Ordre de remplissage : $1s arrow.r 2s arrow.r 2p arrow.r 3s arrow.r 3p arrow.r dots.h$
]

== Écrire la structure électronique

#exemple[
  #grid(columns: (1fr, 1fr), gutter: 1em,
    [
      *$attach("Li", bl: 3)$* — 3 électrons :
      $ 1s^2 space 2s^1 $
  //    → *1 électron de valence* (couche $n=2$)
    ],
    [
      *$attach("C", bl: 6)$* — 6 électrons :
      $ 1s^2 space 2s^2 space 2p^2 $
  //    → *4 électrons de valence* (couche $n=2$)
    ]
  )
]

#définition[
  Les *électrons de valence* sont ceux de la *dernière couche* (remplie ou en cours de remplissage). Ils gouvernent les propriétés chimiques de l'élément.
]

#application[
  Déterminer la structure électronique et le nombre d'électrons de valence :

  #grid(columns: (1fr, 1fr), gutter: 0.5em,
    [
      + $attach("O", bl: 8)$ : $1s^2 2s^2 2p^4$ \
        → *6 électrons de valence*
    ],
    [
      + $attach("Ne", bl: 10)$ : $1s^2 2s^2 2p^6$ \
        → *8 électrons de valence*
    ],
    [
      + $attach("P", bl: 15)$ : $1s^2 2s^2 2p^6 3s^2 3p^3$ \
        → *5 électrons de valence*
    ],
    [
      + $attach("Si", bl: 14)$ : $1s^2 2s^2 2p^6 3s^2 3p^2$ \
        → *4 électrons de valence*
    ]
  )
]

*EXERCICE 4*

= Familles chimiques et tableau périodique

#align(center)[#image("figures/tableauperiodique_couches.png",width:100%)]

#définition[
  Les atomes d'une *même colonne* du tableau périodique :
  - ont le *même nombre d'électrons de valence*
  - ont des *propriétés chimiques voisines*

  Ils forment une même *famille chimique*.
]

#exemple[
  #grid(columns: (1fr, 1fr), gutter: 1em,
    block(
     // fill: c-accent.lighten(90%),
     // stroke: (left: 3pt + c-accent),
      radius: (right: 4pt),
      inset: 0.8em,
      [
        *Halogènes* (7 $e^-$ de valence) \
        F, Cl, Br, I \
        #text(size: 9pt, style: "italic")[très réactifs, forment des sels]
      ]
    ),
    block(
    //  fill: c-primary.lighten(90%),
    //  stroke: (left: 3pt + c-primary),
      radius: (right: 4pt),
      inset: 0.8em,
      [
        *Alcalins* (1 $e^-$ de valence) \
        Li, Na, K \
        #text(size: 9pt, style: "italic")[très réactifs, forment des bases]
      ]
    )
  )
]

#important[
  La position d'un élément dans le tableau périodique renseigne directement sur :
  - Le *numéro de ligne ou période* → numéro $n$ de la dernière couche
  - Le *numéro de colonne* → nombre d'électrons de valence
]

#exemple[Localiser dans le tableau périodique l'atome dont la structure électronique se termine par: $ 3p^4 $

- 3-ème ligne n=3
- 4-ème colonne *du bloc p*]
#pagebreak()
#chapitre[EXERCICES du chapitre Description de la Matière]
#align(center)[#image("figures/tableauperiodique_couches.png",width:60%)]
#exercice[
  Le noyau de l'atome de fer est noté $attach("Fe", tl: 56, bl: 26)$.

  + Combien y a-t-il de protons, de neutrons et de nucléons dans ce noyau ?
  + Calculer la masse approximative de cet atome. \
    _Donnée : $m_"nucléon" = 1,67 times 10^(-27)$ kg_
  + La masse réelle de l'atome de fer est $9,27 times 10^(-26)$ kg. Comparer avec le résultat
    précédent. L'approximation est-elle justifiée ?

]

#exercice[

1. Un atome de fluor contient 19 nucléons et 9 protons. Combien contient-il de neutrons ?
2. Un atome de phosphore de symbole P possède 31 nucléons et 15 protons. Ecrire la représentation symbolique de son noyau.
3. Expliquer pourquoi on peut affimer que tous les noyaux des atomes de l'univers sont chargés positivement ?

]
#exercice[
Le mercure, seul métal liquide à température ambiante, a une densité très élevée. En effet, tandis qu’une goutte d’eau a une masse de 35 mg, une même goutte de mercure a une masse presque quatorze fois plus grande. Le noyau de l'atome de mercure a pour notation symbolique: $attach("Hg",bl:80,tl:202)$

1. Donner la composition de cet atome.
2. Calculer la masse de cet atome. Exprimer le résultat en kg puis en g.
3. Combien d’atomes y a-t-il dans une goutte de mercure ?

]
#exercice[
  On considère les atomes : $attach("H", bl:1)$, $attach("He", bl:2)$, $attach("Na", bl:11)$,
  $attach("Cl", bl:17)$, $attach("Ar", bl:18)$, $attach("Ca", bl:20)$.

  + Écrire la structure électronique de chacun de ces atomes.
  + Indiquer pour chacun le nombre d'électrons de valence.
  + Trouver un point commun entre l'argon Ar et le néon Ne.
  + L'ion $"Na"^+$ et l'ion $"Cl"^-$ ont-ils la même structure électronique ? Justifier.

//  #lignes_reponse(6)
]
#exercice[
1. Un atome de fluor contient 19 nucléons et 9 protons. Combien contient-il de neutrons ?
2. Un atome de phosphore de symbole P possède 31 nucléons et 15 protons. Ecrire la représentation symbolique de son noyau.
3. Expliquer pourquoi on peut affimer que tous les noyaux des atomes de l'univers sont chargés positivement ?
]
#exercice[
  + Écrire la structure électronique de $attach("F", bl:9)$ et de $attach("Cl", bl:17)$.
    Combien ont-ils d'électrons de valence ? Pourquoi appartiennent-ils à la même famille ?
  + Écrire la structure électronique de $attach("Li", bl:3)$ et de $attach("Na", bl:11)$.
    Combien ont-ils d'électrons de valence ?
  + L'ion chlorure $"Cl"^-$ a-t-il la même structure électronique que $attach("Ar", bl:18)$ ? Justifier.
  + Proposer une explication au fait que les gaz nobles (He, Ne, Ar) sont très peu réactifs
    chimiquement. _(Indice : regarder leur structure de couche externe)_

  //#lignes_reponse(6)
]
#align(center)[#image("figures/cartes_tableau_periodique.pdf",width:100%)]
