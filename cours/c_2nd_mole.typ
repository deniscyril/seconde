#import "../_assets/template_physique.typ": *

#show: conf

#chapitre[La Mole]

= Pourquoi regrouper les atomes ?

== L'idée de paquet

Dans la vie courante, on regroupe certains objets en _paquets_ pour les compter plus facilement.

#exemple[
  - On vend les œufs *par douzaines* : 1 douzaine = 12 œufs.
  - On vend les feuilles de papier *par rames* : 1 rame = 500 feuilles.

  Il serait fastidieux de compter 500 feuilles une à une : le paquet est plus pratique.
]

== Le problème du chimiste

En chimie, on manipule des atomes et des molécules. D'après ce que tu sais déjà (chapitre précédent), un atome mesure environ $10^(-10)$ m et sa masse est de l'ordre de $10^(-27)$ kg.

#important[
  Il est *impossible* de compter les atomes un par un : ils sont beaucoup trop nombreux et trop petits. Dans un simple verre d'eau, il y a plus d'atomes que de grains de sable sur Terre.
]

Le chimiste a donc besoin, lui aussi, d'un *paquet* adapté à l'échelle des atomes. Ce paquet s'appelle la *mole*.

#align(center)[#image("figures/mole_analogie.png", width: 85%)]

= La mole et la constante d'Avogadro $N_A$

== Définition de la mole

#définition[
  La *mole* (symbole : *mol*) est l'unité de *quantité de matière*. On la note *$n$*.

  Une mole contient exactement *$N_A$* entités (atomes, molécules, ions…).
]

== La constante d'Avogadro

#définition[
  La *constante d'Avogadro* $N_A$ vaut :
  $ N_A = qty("6.02e23", "mol^-1") $

  C'est un nombre *gigantesque* : si l'on pouvait empiler $N_A$ feuilles de papier, la pile atteindrait des millions d'années-lumière.
]

#important[
  - 1 mole d'atomes de fer contient $N_A$ atomes de fer.
  - 1 mole de molécules d'eau contient $N_A$ molécules d'eau.
  - 2 moles d'atomes de carbone contiennent $2 times N_A$ atomes de carbone.
]

== Relation entre quantité de matière et nombre d'entités

#définition[
  Si un échantillon contient $N$ entités et que sa quantité de matière est $n$, alors :

  $ N = n times N_A $

  - $N$ : nombre d'entités (sans unité)
  - $n$ : quantité de matière (en mol)
  - $N_A = qty("6.02e23", "mol^-1")$
]

#application[
  Un comprimé effervescent libère $n = 0,50$ mol de molécules de dioxyde de carbone $"CO"_2$.
  Calculer le nombre $N$ de molécules de $"CO"_2$ libérées.

  *Donnée :* $N_A = qty("6.02e23", "mol^-1")$

  *Calcul :*
  $ N = n times N_A = 0,50 times 6,02 times 10^(23) = 3,01 times 10^(23) "molécules" $
]

= La masse molaire

== Masse molaire atomique

#définition[
  La *masse molaire atomique* $M$ d'un élément est la masse d'une mole d'atomes de cet élément.

  Elle s'exprime en *grammes par mole* (g/mol) et se lit directement dans le tableau périodique.
]

#important[
  La masse molaire atomique (en g/mol) est numériquement égale au nombre de masse $A$ de l'atome.

  Exemples : $M("H") = 1,0$ g/mol ; $M("C") = 12$ g/mol ; $M("O") = 16$ g/mol ; $M("Fe") = 56$ g/mol.
]

#application[
  En utilisant le tableau périodique, donner la masse molaire des atomes suivants :
  - Sodium Na
  - Chlore Cl
  - Cuivre Cu

  *Réponses :* $M("Na") = 23$ g/mol ; $M("Cl") = 35,5$ g/mol ; $M("Cu") = 63,5$ g/mol.
]

== Masse molaire moléculaire

#définition[
  La *masse molaire moléculaire* d'une molécule est la *somme* des masses molaires atomiques de tous les atomes qui la constituent.
]

#exemple[
  Calculer la masse molaire de la molécule d'eau $"H"_2"O"$.

  La molécule d'eau contient *2 atomes d'hydrogène* et *1 atome d'oxygène* :

  $ M("H"_2"O") = 2 times M("H") + 1 times M("O") = 2 times 1,0 + 1 times 16 = 18,0 "g/mol" $
]

#application[
  Calculer la masse molaire du dioxyde de carbone $"CO"_2$.

  *Données :* $M("C") = 12$ g/mol ; $M("O") = 16$ g/mol.

  $ M("CO"_2) = 1 times M("C") + 2 times M("O") = 12 + 2 times 16 = 44 "g/mol" $
]

= Calculer une quantité de matière à partir d'une masse

== La relation fondamentale

En laboratoire, on ne compte pas les atomes : on *pèse* les substances. Il faut donc relier la masse $m$ (mesurable) à la quantité de matière $n$.

#définition[
  La quantité de matière $n$ d'un échantillon de masse $m$ et de masse molaire $M$ est :

  $ n = m / M $

  - $n$ : quantité de matière (en *mol*)
  - $m$ : masse de l'échantillon (en *g*)
  - $M$ : masse molaire (en *g/mol*)
]

== Comment isoler la grandeur cherchée ?

La relation de base est $n = m/M$. Selon ce que l'on cherche, on la réarrange algébriquement.

*Chercher $m$ — on connaît $n$ et $M$ :*

On part de $n = m/M$ et on multiplie les deux membres par $M$ :
$ n times M = m $
On en déduit :
$ m = n times M $

*Chercher $M$ — on connaît $m$ et $n$ :*

On part de $m = n times M$ et on divise les deux membres par $n$ :
$ m / n = (n times M) / n = M $
On en déduit :
$ M = m / n $

== Méthode de calcul pas à pas

#exemple[
  On dispose d'un morceau de cuivre de masse $m = 12,7$ g.
  Calculer la quantité de matière $n$ de cuivre.

  *Donnée :* $M("Cu") = 63,5$ g/mol.

  *Étape 1 — Formule :* on cherche $n$, on utilise directement $n = m \/ M$.

  *Étape 2 — Application numérique :*
  $ n = m / M = 12,7 / 63,5 = 0,20 "mol" $
]

#application[
  + On dispose de $n = 2,0$ mol de sel de cuisine (chlorure de sodium $"NaCl"$).
    Calculer la masse $m$ correspondante.

    *Données :* $M("Na") = 23$ g/mol ; $M("Cl") = 35,5$ g/mol.

    _Calcul de $M("NaCl")$ :_
    $ M("NaCl") = M("Na") + M("Cl") = 23 + 35,5 = 58,5 "g/mol" $

    _On cherche $m$ : on part de $n = m\/M$ et on isole $m$ :_
    $ m = n times M = 2,0 times 58,5 = 117 "g" $

  + On pèse un morceau de fer : $m = 2,8$ g.
    Calculer $n$ puis le nombre $N$ d'atomes de fer.

    *Données :* $M("Fe") = 56$ g/mol ; $N_A = qty("6.02e23", "mol^-1")$.

    $ n = m / M = 2,8 / 56 = 0,050 "mol" $
    $ N = n times N_A = 0,050 times 6,02 times 10^(23) = 3,01 times 10^(22) "atomes" $
]

= TP : La bouteille bleue

#experience[
  Le TP *Bouteille bleue* illustre ce cours. Une solution change de couleur entre bleu et incolore selon les quantités de réactifs introduits.

  Dans le mode opératoire, les quantités sont exprimées *à la fois* en nombre de molécules *et* en moles, pour que tu puisses faire le lien entre les deux grandeurs.
]

// ──────────────────────────────────────────────────────────────
#chapitre[Exercices — La Mole]

#exercice[
  *Quantité de matière et nombre d'entités*

  On dispose des échantillons suivants. Calculer le nombre d'entités $N$ dans chaque cas.

  *Donnée :* $N_A = qty("6.02e23", "mol^-1")$.

  + $n = 1,0$ mol d'atomes de sodium Na.
  + $n = 0,50$ mol de molécules d'eau $"H"_2"O"$.
  + $n = 3,0$ mol d'ions chlorure $"Cl"^-$.
  + $n = 0,25$ mol de molécules de dioxygène $"O"_2$.
]

#exercice[
  *Masse molaire moléculaire*

  Calculer la masse molaire de chacune des molécules suivantes.

  *Données :* $M("H") = 1,0$ g/mol ; $M("C") = 12$ g/mol ; $M("N") = 14$ g/mol ;
  $M("O") = 16$ g/mol ; $M("S") = 32$ g/mol ; $M("Cl") = 35,5$ g/mol.

  + Le dihydrogène $"H"_2$
  + L'ammoniac $"NH"_3$
  + L'acide chlorhydrique $"HCl"$
  + Le glucose $"C"_6"H"_12"O"_6$
  + L'acide sulfurique $"H"_2"SO"_4$
]

#exercice[
  *De la masse à la quantité de matière*

  Pour chaque situation, calculer la quantité de matière $n$ puis le nombre d'entités $N$.

  *Données :* $M("Fe") = 56$ g/mol ; $M("Al") = 27$ g/mol ; $M("Cu") = 63,5$ g/mol ;
  $N_A = qty("6.02e23", "mol^-1")$.

  + Une pièce de 2 euros contient environ $m = 5,4$ g de cuivre Cu.
  + Une canette en aluminium a une masse $m = 13,5$ g.
  + Un clou en fer a une masse $m = 2,8$ g.
]

#exercice[
  *L'eau du robinet*

  Un verre d'eau contient $m = 180$ g d'eau $"H"_2"O"$.

  *Données :* $M("H") = 1,0$ g/mol ; $M("O") = 16$ g/mol ;
  $N_A = qty("6.02e23", "mol^-1")$.

  + Calculer la masse molaire $M("H"_2"O")$ de l'eau.
  + Calculer la quantité de matière $n$ d'eau contenue dans ce verre.
  + Calculer le nombre $N$ de molécules d'eau dans ce verre.
  + Que penses-tu du résultat obtenu ? Est-il surprenant ?
]

#exercice[
  *Le paracétamol*

  Le paracétamol est le principe actif du Doliprane®. Sa formule chimique est $"C"_8"H"_9"N""O"_2$.
  Un comprimé contient $m = 500$ mg de paracétamol.

  *Données :* $M("H") = 1,0$ g/mol ; $M("C") = 12$ g/mol ; $M("N") = 14$ g/mol ;
  $M("O") = 16$ g/mol ; $N_A = qty("6.02e23", "mol^-1")$.

  + Calculer la masse molaire $M$ du paracétamol.
  + Convertir la masse du comprimé en grammes. En déduire la quantité de matière $n$ de paracétamol.
  + Calculer le nombre $N$ de molécules de paracétamol dans un comprimé.
  + La dose maximale journalière est de 4 comprimés. Quelle quantité de matière totale de paracétamol ingère-t-on ?
]

#exercice[
  *Réflexion — Même masse, même quantité ?*

  Un chimiste dispose de deux fioles :
  - Fiole A : $m_A = 56$ g de fer Fe
  - Fiole B : $m_B = 56$ g de soufre S

  *Données :* $M("Fe") = 56$ g/mol ; $M("S") = 32$ g/mol ;
  $N_A = qty("6.02e23", "mol^-1")$.

  + Calculer la quantité de matière $n_A$ dans la fiole A et $n_B$ dans la fiole B.
  + Les deux fioles contiennent-elles la même quantité de matière ? Le même nombre d'atomes ?
  + Calculer le nombre d'atomes $N_"Fe"$ dans la fiole A et $N_"S"$ dans la fiole B.
  + *Question de réflexion :* Peut-on avoir la même quantité de matière dans deux fioles de masses différentes ? Donne un exemple.
]
