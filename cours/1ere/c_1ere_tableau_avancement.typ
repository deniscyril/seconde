#import "../../_assets/template_physique.typ": *

#show: conf

#chapitre[Tableau d'avancement]

= Approche qualitative — raisonner sur les proportions

== Une analogie : la recette de crêpes

#exemple[
  Pour préparer *une crêpe*, la recette demande :
  $ 1 "œuf" + 100 "g de farine" + 200 "mL de lait" arrow.r 1 "crêpe" $

  Si l'on dispose de *4 œufs*, *500 g de farine* et *600 mL de lait*, combien peut-on préparer de crêpes ?

  #align(center)[
    #table(
      columns: (2.5fr, 1.5fr, 2fr, 2.5fr),
      align: center,
      inset: (x: 0.5em, y: 0.4em),
      [*Ingrédient*], [*Disponible*], [*Pour 1 crêpe*], [*Crêpes possibles*],
      [Œufs],  [$4$],       [$1$],       [$4$],
      [Farine], [$500$ g],  [$100$ g],   [$5$],
      [Lait],  [$600$ mL],  [$200$ mL],  [*3 → limitant*],
    )
  ]

  On peut préparer au maximum *3 crêpes* : le lait est l'*ingrédient limitant*.
  Il restera 1 œuf et 200 g de farine *en excès*.
]

//Ce raisonnement s'applique directement en chimie : les réactifs jouent le rôle des ingrédients, et les *coefficients stœchiométriques* donnent les proportions requises.

== Bilan de matière par les proportions stœchiométriques

#exemple[
  Combustion du dihydrogène :
  $ 2 "H"_2 + "O"_2 arrow.r 2 "H"_2"O" $

  *Données :* $n_0("H"_2) = 6$ mol et $n_0("O"_2) = 2$ mol.

  *Étape 1 — Identifier le réactif limitant.*

  Pour chaque réactif, on calcule le rapport $n_0 slash "coefficient"$ :
  $ "H"_2 : quad 6/2 = 3 quad quad "O"_2 : quad 2/1 = 2 $

  Le rapport le plus petit désigne le *réactif limitant* : ici $"O"_2$ (car $2 < 3$).

  *Étape 2 — Calculer les quantités consommées et produites.*

  La réaction se déroule *2 fois* la proportion stœchiométrique (valeur du rapport minimum).

  #align(center)[
    #table(
      columns: (3.5fr, 3fr, 2.5fr),
      align: center,
      inset: (x: 0.5em, y: 0.4em),
      [*Espèce*], [*Variation*], [*Quantité finale*],
      [$"H"_2$ (réactif en excès)],    [$- 2 times 2 = -4$ mol], [$6 - 4 = bold(2)$ mol],
      [$"O"_2$ (réactif limitant)],    [$- 1 times 2 = -2$ mol], [$2 - 2 = bold(0)$ mol #sym.checkmark],
      [$"H"_2"O"$ (produit)],          [$+ 2 times 2 = +4$ mol], [$0 + 4 = bold(4)$ mol],
    )
  ]

  $"O"_2$ est totalement consommé, il reste *2 mol* de $"H"_2$ en excès, et *4 mol* d'eau sont produites.
]

// #important[
//   *Méthode des proportions stœchiométriques* — pour $a A + b B arrow.r c C + ...$

//   + Calculer $n_0(A) slash a$ et $n_0(B) slash b$ pour chaque réactif.
//   + Le *réactif limitant* est celui dont ce rapport est le *plus petit*.
//   + Les variations de quantité de matière sont égales au rapport minimum *multiplié par le coefficient stœchiométrique* de chaque espèce.
// ]


Cette approche par les proportions est efficace pour des nombres simples. Elle présente cependant une limite : dès que les quantités de matière ne tombent pas sur des entiers, la gestion des calculs devient fastidieuse.

Le *tableau d'avancement* est la systématisation algébrique de ce même raisonnement à l'aide d'une variable $x$ (l'*avancement*), ce qui permet :
- de traiter n'importe quelle situation sans recourir à l'intuition ;
- de décrire l'évolution continue du système entre l'état initial et l'état final ;
- d'étendre l'analyse aux transformations non totales (programme de Terminale).


= Méthode du Tableau d'avancement
== Vocabulaire
#définition[
  Lors d'une réaction chimique, le *système chimique* passe d'un *état initial* (avant la réaction) à un *état final* (quand la réaction est terminée).

  - *État initial* : le système contient les réactifs dans leurs quantités de départ ; les produits sont absents (0 mol).
  - *État final* : au moins un réactif a été consommé.
]

#définition[
  L'*avancement* $x$ (en mol) est une grandeur qui décrit la *progression* de la réaction depuis l'état initial.

  - À l'état initial : $x = 0$
  - $x$ augmente au fur et à mesure que la réaction avance
  - À l'état final : $x = x_f$
]


#définition[
  - Une transformation est dite *totale* si, à l'état final, au moins un réactif est entièrement consommé : $x_f = x_"max"$.
  - Une transformation est dite *non totale* si, à l'état final, tous les réactifs sont encore présents : $x_f < x_"max"$.
]

#important[
  En classe de Première, *on considère toutes les transformations comme totales* sauf indication contraire. Le tableau d'avancement permet alors de calculer entièrement la composition de l'état final.

  Pour une transformation non totale, la valeur de $x_f$ ne peut pas être prédite par le seul tableau d'avancement — elle sera déterminée en Terminale (notion d'équilibre chimique).
]

== Exemple complet : combustion du méthane

#exemple[
  La combustion du méthane suit l'équation :
  $ "CH"_4 + 2 "O"_2 arrow.r "CO"_2 + 2 "H"_2"O" $

  On part de $n_0("CH"_4) = 3$ mol et $n_0("O"_2) = 3$ mol. Les produits sont initialement absents.

  #align(center)[
    #table(
      columns: (2fr, 1.2fr, 2.3fr, 2.3fr, 2.3fr, 2.3fr),
      align: center,
      inset: (x: 0.5em, y: 0.4em),
      [*État*], [$x$ (mol)], [$n("CH"_4)$], [$n("O"_2)$], [$n("CO"_2)$], [$n("H"_2"O")$],
      [Initial], [$0$], [$3$], [$3$], [$0$], [$0$],
      [Interméd.], [$x$], [$3 - x$], [$3 - 2x$], [$x$], [$2x$],
      [Final], [$x_f$], [$3 - x_f$], [$3 - 2 x_f$], [$x_f$], [$2 x_f$],
    )
  ]
  La transformation étant totale $x_f = x_("max")$:
  - Si $C H_4$ entièrement consommé: $3-x_("max") = 0 $ soit $x_("max")=3 "mol"$
  - Si $O_2$ entièrement consommé: $3-2 x_("max")= 0$ soit $x_("max")=1,5 "mol"$
  La plus petite valeur est la valeur de $x_("max")= 1,5 "mol"$ à retenir pour remplir la dernière ligne du tableau. 
  - Ici à l'état final, $O_2$ a été entièrement consommé, c'est le *réactif limitant*.
 ]


// --- Helpers (à mettre dans ton template si tu veux les réutiliser) ---
#let rep(w: 2cm) = box(width: w, height: 1em,
  stroke: (bottom: (paint: gray, thickness: 0.6pt, dash: "dotted")))
#let vide = table.cell(fill: luma(235))[]

== Pratique guidée

On reprend *la même réaction* :
$ "CH"_4 + 2 "O"_2 arrow.r "CO"_2 + 2 "H"_2"O" $
Avec d'autres quantités initiales : $n_0("CH"_4) = 1$ mol et $n_0("O"_2) = 5$ mol. 

*Étape 1 — Ligne « Initial ».* Recopie les quantités de l'énoncé. Au départ, rien n'a encore réagi : $x = 0$.

*Étape 2 — Ligne « Intermédiaire ».* Pour chaque espèce, on utilise le coefficient placé devant elle dans l'équation :
- réactif : $n = n_0 - "coefficient" times x$ (il disparaît) ;
- produit : $n = n_0 + "coefficient" times x$ (il apparaît).
La case du méthane est donnée comme modèle.

#align(center)[
  #table(
    columns: (2fr, 1.2fr, 2.3fr, 2.3fr, 2.3fr, 2.3fr),
    align: center + horizon,
    inset: (x: 0.5em, y: 0.6em),
    [*État*], [$x$ (mol)], [$n("CH"_4)$], [$n("O"_2)$], [$n("CO"_2)$], [$n("H"_2"O")$],
    [Initial], [$0$], vide, vide, vide, vide,
    [Interméd.], [$x$], [$1 - x$], vide, vide, vide,
    [Final], [$x_("f")$], vide, vide, vide, vide,
  )
]

*Étape 3 — Recherche de $x_("max")$.* On suppose tour à tour que chaque réactif est entièrement consommé :
- Si $"CH"_4$ est entièrement consommé : #rep() $= 0$, soit $x_("max") =$ #rep() mol.
- Si $"O"_2$ est entièrement consommé : #rep() $= 0$, soit $x_("max") =$ #rep() mol.

On retient la *plus petite* valeur : $x_("max") =$ #rep() mol.

*Étape 4 — Réactif limitant.* Le réactif limitant est #rep(w: 2.5cm), car c'est lui qui donne la plus petite valeur de $x_("max")$.


*Étape 5 — Ligne « Final ».* Remplace $x$ par la valeur de $x_("max")$ dans chaque case de la ligne intermédiaire.
_Vérifie :_ la quantité du réactif limitant doit être nulle, et aucune quantité ne peut être négative.

*Étape 6 — Bilan de matière à l'état final.* À l'état final, le système contient :
#rep() mol de $"CH"_4$ ; #rep() mol de $"O"_2$ ; #rep() mol de $"CO"_2$ ; #rep() mol de $"H"_2"O"$.


== Pratique autonome

On recommence avec  $n_0("CH"_4) = 2$ mol et $n_0("O"_2) = 4$ mol.

+ Construis le tableau d'avancement complet, jusqu'à l'état final.
+ Détermine l'avancement maximal $x_("max")$ et le réactif limitant.
+ Rédige le bilan de matière à l'état final.

#align(center)[
  #table(
    columns: (2fr, 1.2fr, 2.3fr, 2.3fr, 2.3fr, 2.3fr),
    align: center + horizon,
    inset: (x: 0.5em, y: 0.7em),
    [*État*], vide, vide, vide, vide, vide,
    [Initial], vide, vide, vide, vide, vide,
    [Interméd.], vide, vide, vide, vide, vide,
    [Final], vide, vide, vide, vide, vide,
  )
]

#v(3cm) // espace de rédaction pour la recherche de x_max et le bilan

*Que remarques-tu à l'état final, par rapport aux deux exercices précédents ?*
#v(1.5cm)

#block(inset: 0.8em, stroke: (left: 2pt + gray), [
  Quand les deux réactifs sont entièrement consommés en même temps, on dit que les réactifs ont été introduits dans les *proportions stœchiométriques* : on parle de *mélange stœchiométrique*.
])

// Adapte le nom de l'environnement à ton template
#définition[
  Pour une réaction d'équation $a thin "A" + b thin "B" arrow.r c thin "C" + d thin "D"$, le mélange initial est *stœchiométrique* si les quantités initiales des réactifs sont dans les proportions des coefficients stœchiométriques :
  $ (n_0("A"))/a = (n_0("B"))/b $
  Dans ce cas, si la transformation est totale, *tous les réactifs sont entièrement consommés* à l'état final : il n'y a pas de réactif limitant unique.
]

*Vérifie la définition sur l'exercice :* calcule $(n_0("CH"_4))/1$ et $(n_0("O"_2))/2$.
#v(1cm)
//= Tableau récapitulatif

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Tableau d'avancement]

#important[
  #align(center)[
    #table(
      columns: (2.5fr, 3fr, 1fr),
      align: (left, left, center),
      stroke: (x, y) => if y == 0 { (bottom: 1pt) } else { none },
      inset: (x: 0.5em, y: 0.4em),
      [*Notion*], [*À retenir*], [*Exos*],
      [Avancement $x$], [Progression de la réaction, en mol, $x = 0$ à l'état initial], [1, 2],
      [Quantité réactif], [$n_(0) - "coeff" times x$ (décroît)], [1, 2, 3],
      [Quantité produit], [$"coeff" times x$ (croît, part de 0)], [1, 2, 3],
      [Avancement maximal], [$x_"max"$ = plus petite valeur annulant un réactif], [2, 3, 4],
      [Réactif limitant], [Réactif épuisé en premier ($n = 0$ à $x_"max"$)], [2, 3, 4, 5],
      [Mélange stœchiom.], [$n_(A,0) \/ a = n_(B,0) \/ b$ (tous réactifs limitants)], [3, 6],
      [Transformation totale], [$x_f = x_"max"$, au moins un réactif épuisé], [tous],
      //[Transformation non totale], [$x_f < x_"max"$, aucun réactif épuisé], [7],
    )
  ]
]

#exercice[
  *Construire un tableau d'avancement — réaction simple*

  On fait réagir $n_0("H"_2) = 2,0$ mol de dihydrogène avec $n_0("O"_2) = 2,0$ mol de dioxygène selon :
  $ 2 "H"_2 + "O"_2 arrow.r 2 "H"_2"O" $

  + Construire le tableau d'avancement.
  + Déterminer $x_"max"$ et le réactif limitant.
  + Donner les quantités de matière de toutes les espèces à l'état final.
]

#exercice[
  *Combustion du propane*

  La combustion complète du propane $"C"_3"H"_8$ s'écrit :
  $ "C"_3"H"_8 + 5 "O"_2 arrow.r 3 "CO"_2 + 4 "H"_2"O" $

  On dispose de $n_0("C"_3"H"_8) = 1,5$ mol et $n_0("O"_2) = 6,0$ mol.

  + Construire le tableau d'avancement.
  + Déterminer $x_"max"$ et le réactif limitant.
  + Calculer les quantités de matière à l'état final.
  + Ce mélange est-il stœchiométrique ? Justifier.
]

#exercice[
  *Tableau à compléter*

  On fait réagir du zinc Zn avec une solution d'acide chlorhydrique contenant des ions $"H"_3"O"^+$ selon :
  $ "Zn" + 2 "H"_3"O"^+ arrow.r "Zn"^(2+) + "H"_2 + 2 "H"_2"O" $

  On dissout $m = 3,27$ g de zinc dans un volume $V = 100$ mL d'une solution d'acide à $C = 0,80$ mol·L⁻¹.

  *Données :* $M_"Zn" = 65,4$ g·mol⁻¹.

  + Calculer $n_0("Zn")$ et $n_0("H"_3"O"^+)$.
  + Construire le tableau d'avancement.
  + Identifier le réactif limitant et calculer $x_"max"$.
  + Donner la composition du système à l'état final. Calculer la masse de zinc restante si elle est non nulle.
]

#exercice[
  *Préparer un mélange stœchiométrique*

  On souhaite préparer un mélange stœchiométrique pour la réaction :
  $ "N"_2 + 3 "H"_2 arrow.r 2 "NH"_3 $

  + Écrire la condition de mélange stœchiométrique en termes de quantités de matière.
  + On dispose de $n_0("N"_2) = 0,50$ mol. Quelle quantité de $"H"_2$ faut-il prendre pour que le mélange soit stœchiométrique ?
  + Calculer les quantités de matière à l'état final pour ce mélange stœchiométrique.
]

#exercice[
  *Identifier le réactif limitant par calcul*

  On mélange $m_1 = 5,6$ g de fer Fe avec $V = 50$ mL d'une solution contenant des ions $"Cu"^(2+)$ à $C = 1,5$ mol·L⁻¹. La réaction est :
  $ "Fe" + "Cu"^(2+) arrow.r "Fe"^(2+) + "Cu" $

  *Donnée :* $M_"Fe" = 56$ g·mol⁻¹.

  + Calculer $n_0("Fe")$ et $n_0("Cu"^(2+))$.
  + Construire le tableau d'avancement et déterminer le réactif limitant.
  + Calculer la masse de cuivre déposée à l'état final.
  + Calculer la masse de fer restante (si non nulle).
]

#exercice[
  *Mélange stœchiométrique : vérification expérimentale*

  La réaction entre le dioxyde de soufre $"SO"_2$ et le dioxygène $"O"_2$ produit du trioxyde de soufre $"SO"_3$ :
  $ 2 "SO"_2 + "O"_2 arrow.r 2 "SO"_3 $

  On réalise deux expériences :
  - Exp. A : $n_0("SO"_2) = 4,0$ mol et $n_0("O"_2) = 2,0$ mol
  - Exp. B : $n_0("SO"_2) = 4,0$ mol et $n_0("O"_2) = 1,0$ mol

  + Pour chaque expérience, déterminer le réactif limitant et calculer $x_"max"$.
  + Laquelle des deux expériences correspond à un mélange stœchiométrique ?
  + Calculer la quantité de $"SO"_3$ produite dans chaque cas.
]

// #exercice[
//   *Transformation non totale — état final partiel*

//   On mélange $n_0("H"_2) = 1,0$ mol et $n_0("I"_2) = 1,0$ mol. La réaction :
//   $ "H"_2 + "I"_2 arrow.r 2 "HI" $
//   est *non totale* : à l'état final, on mesure $n_f("HI") = 1,58$ mol.

//   + Construire le tableau d'avancement en faisant apparaître $x_f$.
//   + En déduire $x_f$ à partir de la valeur mesurée de $n_f("HI")$.
//   + Calculer $x_"max"$ (en supposant la réaction totale) et vérifier que $x_f < x_"max"$.
//   + Donner les quantités de matière de toutes les espèces à l'état final.
// ]

#exercice[
  *Défi — Réaction d'oxydoréduction et tableau d'avancement*

  #text(style: "italic")[
    On plonge une lame de cuivre Cu de masse $m_0 = 6,40$ g dans $V = 200$ mL d'une solution de nitrate d'argent $"AgNO"_3$ de concentration $C = 0,50$ mol·L⁻¹. La réaction (totale) est :
    $ "Cu" + 2 "Ag"^+ arrow.r "Cu"^(2+) + 2 "Ag" $
  ]

  *Données :* $M_"Cu" = 63,5$ g·mol⁻¹ ; $M_"Ag" = 108$ g·mol⁻¹.

  + Calculer $n_0("Cu")$ et $n_0("Ag"^+)$.
  + Construire le tableau d'avancement. Identifier le réactif limitant et calculer $x_"max"$.
  + Calculer les quantités de matière de toutes les espèces à l'état final.
  + Calculer la masse de la lame de cuivre à l'état final. A-t-elle augmenté ou diminué ? Expliquer.
  + Calculer la concentration molaire $C("Cu"^(2+))$ dans la solution finale.
]
