#import "../_assets/template_physique.typ": *
#import "@preview/alchemist:0.1.9": *
#show: conf

// ─── Représentation de Lewis d'un atome (via alchemist) ──────────────────────
// Distribution automatique selon le nombre d'électrons de valence n :
//   - positions : droite (0°), haut (90°), gauche (180°), bas (270°)
//   - 1er remplissage : 1 électron célibataire par face (lewis-single)
//   - appariement : les électrons au-delà de 4 forment des doublets (lewis-line)
#let lewis-frag(sym, n) = {
  let angles = (0deg, 90deg, 180deg, 270deg)
  let n-doublets = calc.max(0, n - 4)
  let n-singles  = calc.min(n, 4) - n-doublets
  let items = ()
  for i in range(4) {
    if i < n-doublets {
      items.push(lewis-line(angle: angles.at(i)))
    } else if i < n-doublets + n-singles {
      items.push(lewis-single(angle: angles.at(i)))
    }
  }
  fragment(sym, lewis: items)
}

#chapitre[Entités Stables]

= Les gaz nobles

== Structures électroniques

Les *gaz nobles* (ou gaz rares) sont les éléments de la *dernière colonne* du tableau périodique. On doit connaître les trois suivants :


#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    align: center + horizon,
    stroke: 0.5pt,
    inset: 8pt,
    [*Élément*], [*Symbole*], [*Structure électronique*], [*Électrons de valence*],
    [Hélium],  [$""_2"He"$],   [$1s^2$],                          [*2*],
    [Néon],    [$""_10"Ne"$],  [$1s^2 2s^2 2p^6$],                [*8*],
    [Argon],   [$""_18"Ar"$],  [$1s^2 2s^2 2p^6 3s^2 3p^6$],     [*8*],
  )
]

#important[
  Les gaz nobles sont *inertes chimiquement* : ils ne forment ni ions ni molécules. Leur structure électronique est *particulièrement stable*.
]

== Règle du duet et règle de l'octet

En observant la structure électronique des gaz nobles, on constate :

- He possède *2 électrons de valence* (structure $1s^2$)
- Ne et Ar possèdent *8 électrons de valence* (couche de valence complète)

On en déduit deux règles fondamentales :

#définition[
  *Règle du duet* : H, Li et Be tendent à s'entourer de *2 électrons de valence*, comme He ($1s^2$).

  *Règle de l'octet* : tous les autres atomes tendent à s'entourer de *8 électrons de valence*, comme Ne ou Ar.

  Pour atteindre cette configuration stable, un atome peut :
  - *gagner ou perdre* des électrons → formation d'*ions*
  - *mettre des électrons en commun* avec d'autres atomes → formation de *molécules*
]

= Formation d'ions monoatomiques

== Principe

#définition[
  Pour obtenir une structure électronique identique à celle d'un gaz noble, un atome peut *gagner* ou *perdre* un ou plusieurs *électrons*. L'entité chargée ainsi formée s'appelle un *ion monoatomique*.

  - Atome qui *perd* $n$ $e^-$:  *cation* de charge $+n$ (exemple : $N a^+$, $M g^(2+)$)
  - Atome qui *gagne* $n$ $e^-$ → *anion* de charge $-n$ (exemple : $"Cl"^-$, $"O"^(2-)$)
]

== Exemple : l'atome de fluor

#exemple[
  L'atome de fluor $""_9"F"$ a pour structure électronique $1s^2 2s^2 2p^5$ :
  il possède *7 électrons de valence*.

  La structure du néon est proche : $""_10"Ne"$ : 1s^2 2s^2 2p^6 (8 $e^-$ de valence).

  En *gagnant 1 électron*, F atteint la même structure que Ne. Il se transforme en *ion fluorure* :

  #align(center)[$""_9"F" + 1 e^- arrow "F"^-$]

  L'ion $"F"^-$ possède bien 8 électrons de valence : il vérifie la règle de l'octet.
]

== Application

#application[
  Déterminer l'ion que peut former chacun des atomes suivants. Préciser le gaz noble de référence, le nombre d'électrons échangés et écrire la formule de l'ion.

  + Chlore : $""_17"Cl"$
  + Sodium : $""_11"Na"$
  + Magnésium : $""_12"Mg"$

  *Réponses :*

  + $""_17"Cl"$ — structure $1s^2 2s^2 2p^6 3s^2 3p^5$ → 7 $e^-$ de valence → *gagne 1 $e^-$* → ressemble à Ar → *ion chlorure* $"Cl"^-$

  + $""_11"Na"$ — structure $1s^2 2s^2 2p^6 3s^1$ → 1 $e^-$ de valence → *perd 1 $e^-$* → ressemble à Ne → *ion sodium* $"Na"^+$

  + $""_12"Mg"$ — structure $1s^2 2s^2 2p^6 3s^2$ → 2 $e^-$ de valence → *perd 2 $e^-$* → ressemble à Ne → *ion magnésium* $"Mg"^(2+)$
]

== Les alcalins

=== Présentation

#définition[
  Les *alcalins* sont les éléments de la *première colonne* du tableau périodique, *sauf l'hydrogène* : Li, Na, K, Rb, Cs…

  Ils possèdent tous *1 seul électron de valence* et ont tendance à le *perdre* facilement, formant des cations de charge $+1$ : $"Li"^+$, $"Na"^+$, $"K"^+$…
]

=== Réactivité commune avec l'eau

#experience[
  *Dispositif :* un cristallisoir rempli d'eau distillée. On y dépose un petit morceau de sodium solide, puis on répète l'expérience avec du potassium.

  *Réactifs :*
  - Sodium $"Na"_((s))$ (ou potassium $"K"_((s))$) — solide gris-argenté
  - Eau distillée $"H"_2"O"_((l))$

  *Observations :*
  - Réaction *vive* avec dégagement gazeux (dihydrogène $"H"_(2(g))$)
  - Le métal se déplace à la surface, fond et disparaît
  - La réaction est *plus violente* avec K qu'avec Na (flamme violette)
  - La solution obtenue est *basique* (ions hydroxyde $"HO"^-$ produits)

  *Produits :* ions $"Na"^+$ (ou $"K"^+$), ions hydroxyde $"HO"^-$, dihydrogène $"H"_2$

  *Équations de réaction :*
$ 2"Na"_((s)) + 2"H"_2"O"_((l)) arrow 2"Na"^+_(("aq")) + 2"HO"^-_(("aq")) + "H"_(2(g)) $
 ]

#important[
  Bien que Na et K soient des éléments différents, ils réagissent avec l'eau *de la même façon* et donnent les *mêmes types de produits*. Cette *réactivité commune* est la signature de la famille des alcalins.

  De façon générale : *des atomes d'une même colonne du tableau périodique ont des propriétés chimiques similaires.*
]

#travail[
  Faire l'exercice *13 p. 79* du manuel.
]

= Représentation de Lewis

== Formule de Lewis d'un atome

On ne représente que les *électrons de valence*, placés autour du symbole de l'élément :

- Un *point* (·) représente un *électron célibataire*
- Deux points (∶) représentent un *doublet non liant* (paire d'électrons non partagée)

On place les électrons face par face (droite, haut, gauche, bas), un par un, puis on apparie les électrons restants.

#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto),
    align: center + horizon,
    stroke: 0.5pt,
    inset: 10pt,
    [*Symbole*], [*Z*], [*Structure électronique*], [*nb $e^-$ de valence*], [*Schéma de Lewis*],
    [H],  [1],  [$1s^1$],                        [1], [#skeletize({ lewis-frag("H",  1) })],
    [C],  [6],  [$1s^2 2s^2 2p^2$],              [4], [#skeletize({ lewis-frag("C",  4) })],
    [N],  [7],  [$1s^2 2s^2 2p^3$],              [5], [#skeletize({ lewis-frag("N",  5) })],
    [O],  [8],  [$1s^2 2s^2 2p^4$],              [6], [#skeletize({ lewis-frag("O",  6) })],
    [Cl], [17], [$1s^2 2s^2 2p^6 3s^2 3p^5$],    [7], [#skeletize({ lewis-frag("Cl", 7) })],
    [Ne], [10], [$1s^2 2s^2 2p^6$],              [8], [#skeletize({ lewis-frag("Ne", 8) })],
  )
]

#important[
  *À retenir :* les schémas de Lewis de H, C, N, O, Cl et Ne sont à connaître par cœur.
]

== Doublets liants et doublets non liants

Lorsque deux atomes se partagent une paire d'électrons, ils forment une *liaison covalente*.

#définition[
  - Un *doublet liant* est une paire d'électrons *mise en commun* entre deux atomes. Il est représenté par un *tiret* —.
  - Un *doublet non liant* est une paire d'électrons qui *n'appartient qu'à un seul atome*. Il est représenté par ∶ près de l'atome.
]

#important[
  Les *4 doublets* d'un atome (sauf H) sont répartis entre doublets liants et doublets non liants, mais leur *nombre total est toujours 4*.
]

== La règle des quatre doublets

#important[
  Dans une molécule :
  - Chaque atome (sauf H) est entouré de *4 doublets* au total (liants + non liants) → règle de l'octet
  - L'hydrogène H n'est entouré que d'*1 seul doublet liant* → règle du duet
]

== Liaisons simples et liaisons doubles

#définition[
  - *Liaison simple* : *1 doublet liant* entre deux atomes → représentée par —
  - *Liaison double* : *2 doublets liants* entre deux atomes → représentée par =

  Une liaison double est plus courte et plus résistante qu'une liaison simple.
]

#exemple[
  *Molécule d'eau $"H"_2"O"$* — liaison simple

  O possède 6 $e^-$ de valence. Il forme 2 liaisons simples avec 2 atomes H et conserve 2 doublets non liants.

  #align(center)[
#skeletize({
  fragment("H")
  single()
  fragment("O", lewis:(
    lewis-line(angle: 90deg),
    lewis-line(angle: 270deg)
  ))
  single()
  fragment("H")
})
  ]

  _Vérification :_ O est entouré de 2 doublets liants (—H) + 2 doublets non liants (∶) = *4 doublets* ; chaque H est entouré de *1 doublet liant*.
]

#exemple[
  *Molécule de dioxygène $"O"_2$* — liaison double

  Chaque O (6 $e^-$ de valence) forme une *liaison double* avec l'autre O et conserve 2 doublets non liants.

  #align(center)[
#skeletize({
  fragment("O", lewis:(
    lewis-line(angle:120deg),
    lewis-line(angle:210deg)
  ))
  double()

fragment("O", lewis:(
    lewis-line(angle:45deg),
    lewis-line(angle:-45deg)
  ))
 
})
 ]

  _Vérification :_ chaque O est entouré de 1 liaison double (= 2 doublets liants) + 2 doublets non liants = *4 doublets*.
]

#application[
  Donner la formule de Lewis du dioxyde de carbone $"CO"_2$.

  *Données :* C possède 4 $e^-$ de valence ; O possède 6 $e^-$ de valence.

  *Réponse :* C forme deux liaisons doubles, une avec chaque O. Chaque O conserve 2 doublets non liants.

  #align(center)[
#skeletize({
  fragment("O", lewis:(
    lewis-line(angle:120deg),
    lewis-line(angle:210deg)
  ))
  double()
  fragment("C")
  double()
  fragment("O", lewis:(
    lewis-line(angle:45deg),
    lewis-line(angle:-45deg)
  ))

})
  ]

  _Vérification :_ C est entouré de 2 × 2 = *4 doublets liants* ; chaque O est entouré de 2 doublets liants + 2 doublets non liants = *4 doublets*.
]

#travail[
  Faire les exercices *22, 23, 25 et 34 p. 79* du manuel.
]

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Entités Stables]

#exercice[
  *Ions monoatomiques*

  Pour chaque atome ci-dessous, indiquer : le gaz noble de référence, si l'atome gagne ou perd des électrons, et écrire la formule de l'ion formé.

  + Oxygène : $""_8"O"$ — structure $1s^2 2s^2 2p^4$
  + Aluminium : $""_13"Al"$ — structure $1s^2 2s^2 2p^6 3s^2 3p^1$
  + Potassium : $""_19"K"$ — structure $1s^2 2s^2 2p^6 3s^2 3p^6 4s^1$
]

#exercice[
  *Formules de Lewis de molécules*

  *Données :* H (1 $e^-$ de valence) ; C (4) ; N (5) ; O (6).

  Pour chaque molécule, tracer la formule de Lewis développée en respectant la règle des 4 doublets (et du duet pour H).

  + Le méthane $"CH"_4$
  + L'ammoniac $"NH"_3$
  + L'éthanol $"C"_2"H"_5"OH"$ _(formule développée : H—C—C—O—H, avec les H attachés aux C)_
]

#exercice[
  *Liaison double*

  La molécule d'éthylène $"C"_2"H"_4$ contient une liaison double C=C.

  *Données :* C (4 $e^-$ de valence) ; H (1 $e^-$ de valence).

  + Combien de liaisons chaque atome C doit-il former au total pour satisfaire la règle de l'octet ?
  + Proposer une formule de Lewis de l'éthylène. _(Aide : chaque C est lié à 2 atomes H et à l'autre C par une liaison double.)_
  + Vérifier que chaque atome respecte la règle du duet ou de l'octet.
]
