#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Dosage par étalonnage d'un sérum physiologique]

// Raccourcis d'unités
#let gL = [g·L#super[−1]]
#let Sm = [S·m#super[−1]]
#let gmol = [g·mol#super[−1]]
#let Sm2 = [S·m#super[2]·mol#super[−1]]

*Contexte* : Vous êtes mandaté par la répression des fraudes pour contrôler la concentration d'un sérum physiologique. Vous devez vérifier, par un dosage par étalonnage utilisant la conductimétrie, que sa concentration massique en chlorure de sodium est conforme à l'étiquette.


*Matériel par binôme* :
- fiole jaugée de 100,0 mL avec bouchon, éprouvette graduée de 100 mL ;
- pipettes jaugées de 5,0 mL, 10,0 mL et 20,0 mL avec système de pipetage ;
- flacon contenant le sérum physiologique à analyser ;
- gamme de 4 solutions étalon de chlorure de sodium ($c_1$ à $c_4$) ;
- conductimètre étalonné, béchers, pissette d'eau distillée ;
- ordinateur avec Regressi ou feuille de papier millimétré.

= Documents

#grid(
  columns: (1fr, 5.5cm),
  column-gutter: 1em,
  [
    *Le sérum physiologique*

    Le sérum physiologique est une solution stérile de chlorure de sodium très souvent utilisée dans le domaine médical. Il s'agit de sel dissous dans l'eau en quantité équivalente à celle retrouvée dans les larmes naturelles ou dans le plasma sanguin.

    La concentration massique en chlorure de sodium indiquée sur l'étiquette du fabricant est : *9,0 #gL*.
  ],
  image("../figures/serum_physiologique.png", width: 100%),
)

*Document 1 — Conductivité et concentration*

La conductivité $sigma$ d'une solution ionique est sa capacité à conduire le courant électrique. Elle s'exprime en siemens par mètre (#Sm). La conductivité d'une solution ionique dépend de la nature et de la concentration des ions présents.

On supposera que les conductivités mesurées dans ce TP sont dues exclusivement à la présence en solution des ions chlorure $"Cl"^-$ et des ions sodium $"Na"^+$.

*Document 2 — Solutions étalon disponibles*

#align(center)[
  #table(
    columns: 5,
    align: center + horizon,
    inset: (x: 0.8em, y: 0.5em),
    [Solution], [$c_1$], [$c_2$], [$c_3$], [$c_4$],
    [Concentration massique (#gL)], [0,60], [0,45], [0,20], [0,10],
  )
]

==  Nécessité de procéder à une dilution #text(weight: "regular", size: 0.85em)[(10 min conseillées)]

#travail[
  À partir de la problématique posée et des documents fournis, justifier la nécessité de diluer le sérum physiologique si l'on veut pouvoir procéder à son dosage par étalonnage, en utilisant la conductimétrie.
]

#important[
  *Appel facultatif* — Appeler le professeur en cas de difficulté.
]
#pagebreak()
==  Élaboration du protocole de dilution et réalisation #text(weight: "regular", size: 0.85em)[(15 min conseillées)]

#travail[
  En utilisant le matériel disponible, proposer un protocole permettant de *diluer 20 fois* la solution de sérum physiologique à contrôler.
]

#important[
  *Appel n°1* — Appeler le professeur pour lui présenter votre protocole ou en cas de difficulté.
]

#experience[
  Réaliser cette dilution.
]

==  Élaboration du protocole de dosage et réalisation #text(weight: "regular", size: 0.85em)[(25 min conseillées)]

#travail[
  En utilisant le matériel disponible et toutes les solutions étalon, proposer un protocole permettant de déterminer la concentration massique en chlorure de sodium du sérum physiologique à contrôler.

  Le protocole devra préciser les mesures qui seront réalisées ainsi que leur exploitation. Pour cette dernière, on utilisera Regressi.
]

#important[
  *Appel n°2* — Appeler le professeur pour lui présenter votre protocole ou en cas de difficulté.
]

#experience[
  Réaliser le protocole.
]

==  Exploitation des mesures #text(weight: "regular", size: 0.85em)[(10 min conseillées)]

#travail[
  *4.1.* Déterminer la concentration massique en chlorure de sodium du sérum physiologique à contrôler.
]

#important[
  *Appel facultatif* — Appeler le professeur en cas de difficulté.
]

La répression des fraudes tolère pour le sérum physiologique une valeur de concentration massique en chlorure de sodium de 9,0 #gL à 10 % près.

#travail[
  *4.2.* En utilisant le résultat obtenu, indiquer si le fabricant peut commercialiser le sérum physiologique contrôlé.
]

=== Questions supplémentaires

#travail[
  *4.3.* Calculer la concentration molaire d'une solution de chlorure de sodium à 9,0 #gL.

  _Données :_ $M("Na") = "23,0"$ #gmol ; $M("Cl") = "35,5"$ #gmol.

  *4.4.* Calculer la conductivité théorique d'une solution de chlorure de sodium à 0,9 #gL.
]

_Données pour la question 4.4 :_
- $lambda("Na"^+) = "5,01" times 10^(-3)$ #Sm2 ; $lambda("Cl"^-) = "7,63" times 10^(-3)$ #Sm2.
// - *Loi de Kohlrausch* : la conductivité est proportionnelle à la concentration des ions en solution :
//   $ sigma = sum_i lambda_i [X_i] = lambda_1 [X_1] + dots + lambda_k [X_k] $
//   avec $sigma$ la conductivité de la solution (en #Sm), $lambda_i$ la conductivité molaire ionique de l'ion $X_i$ (en #Sm2) et $[X_i]$ la concentration de l'ion $X_i$ (en mol·m#super[−3]).

// #important[
//   Défaire le montage et ranger la paillasse avant de quitter la salle.
// ]

// =====================================================================
// Page à part : liste de matériel pour le laboratoire
// =====================================================================
#pagebreak()

== Liste de matériel — préparation du laboratoire

=== Paillasse élève
- fiole jaugée de 100 mL avec bouchon
- éprouvette graduée de 100 mL
- pipettes jaugées de 5 mL, 10 mL et 20 mL
- système de pipetage
- pissette d'eau distillée
- 100 mL d'une solution de chlorure de sodium à 9,0 #gL dans un flacon étiqueté « sérum physiologique »
- 100 mL d'une solution de chlorure de sodium à 0,60 #gL dans un flacon étiqueté « $c_1$ = 0,60 #gL »
- 100 mL d'une solution de chlorure de sodium à 0,45 #gL dans un flacon étiqueté « $c_2$ = 0,45 #gL »
- 100 mL d'une solution de chlorure de sodium à 0,20 #gL dans un flacon étiqueté « $c_3$ = 0,20 #gL »
- 100 mL d'une solution de chlorure de sodium à 0,10 #gL dans un flacon étiqueté « $c_4$ = 0,10 #gL »
- 6 béchers de 100 mL
- conductimètre préalablement étalonné
- verre à pied
- papier absorbant
- ordinateur avec Regressi et une fiche d'utilisation simplifiée
- une feuille de papier millimétré
- une pipette simple
- un marqueur à verre

=== Paillasse professeur
- La solution d'étalonnage du conductimètre, pour ré-étalonner éventuellement les conductimètres dont les paramètres auraient été modifiés.
- 100 mL d'une solution de chlorure de sodium à 0,45 #gL dans un flacon étiqueté « sérum physiologique dilué », pour un élève n'ayant pas réussi à effectuer la dilution.

=== Préparation de la gamme étalon
- Les 4 solutions de la gamme étalon sont préparées par dissolution dans une fiole jaugée d'un litre en pesant respectivement 6,00 g, 4,50 g, 2,00 g et 1,00 g de chlorure de sodium, puis diluées 10 fois.
- Le « sérum physiologique » est préparé en dissolvant 9,00 g de chlorure de sodium dans une fiole jaugée d'un litre.
