#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf

// --- Petit utilitaire : en-tête de tableau (texte blanc en gras) ---
#let entete(s) = text(fill: white, weight: "bold")[#s]

#chapitre[Tableau d'avancement — Feuille d'exercices]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 1
// ════════════════════════════════════════════════════════════════
#exercice[
  *Un premier bilan de matière*

  On réalise la combustion du carbone dans le dioxygène. L'équation de la réaction est :
  $ C + O_2 -> C O_2 $

  À l'état initial, le système contient #strong[$n_0(C)$ = 3,0 mol] de carbone et #strong[$n_0(O_2)$ = 5,0 mol] de dioxygène. Il n'y a pas de produit au départ.

  + *Lecture de l'équation.* Recopie l'équation, entoure le(s) réactif(s) et souligne le produit.

  + Reproduis et *complète le tableau d'avancement* ci-dessous.
    #align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center + horizon,
        inset: 8pt,
        fill: (_, row) => if row == 0 { rgb("2563eb") } else { white },
        table.header(
          entete[État du système], entete[Avancement (mol)],
          entete[$C$ (mol)], entete[$O_2$ (mol)], entete[$C O_2$ (mol)],
        ),
        [État initial],         [$0$],            [$3,0$], [$5,0$], [$0$],
        [État intermédiaire],   [$x$],            [], [], [],
        [État final],           [$x = x_"max"$],  [], [], [],
      )
    ]

  + *Réactif limitant.* En écrivant que les quantités de matière restent positives, détermine la valeur de $x_"max"$ et identifie le *réactif limitant*.
    #h(1cm) $x_"max" =$ #h(3cm) mol

  + *Bilan à l'état final.* Donne la quantité de matière de chaque espèce à l'état final. Un réactif est-il en excès ? Si oui, lequel et en quelle quantité ?
  #lignes_reponse(2)
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 2
// ════════════════════════════════════════════════════════════════
#exercice[
  *Des masses au volume de gaz*

  On brûle du méthane $C H_4$ dans le dioxygène selon l'équation :
  $ C H_4 + 2 O_2 -> C O_2 + 2 H_2 O $

  On introduit #strong[$m(C H_4)$ = 4,0 g] de méthane et #strong[$m(O_2)$ = 24 g] de dioxygène.

  #box(stroke: 0.5pt + gray, fill: rgb("fafafa"), inset: 8pt, width: 100%)[
    *Données.* Masses molaires atomiques : $M(C)$ = 12 g·mol⁻¹, #h(0.3cm) $M(H)$ = 1,0 g·mol⁻¹, #h(0.3cm) $M(O)$ = 16 g·mol⁻¹.
    #linebreak()
    Volume molaire (dans les conditions de l'expérience) : $V_m$ = 24 L·mol⁻¹.
  ]

  + Calcule les masses molaires $M(C H_4)$ et $M(O_2)$, puis les *quantités de matière* initiales $n_0(C H_4)$ et $n_0(O_2)$.
  #lignes_reponse(2)

  #set enum(start: 2)
  + Construis le *tableau d'avancement*, puis détermine le *réactif limitant* et $x_"max"$.
    #align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto, auto),
        align: center + horizon,
        inset: 7pt,
        fill: (_, row) => if row == 0 { rgb("2563eb") } else { white },
        table.header(
          entete[État], entete[Av. (mol)],
          entete[$C H_4$], entete[$O_2$], entete[$C O_2$], entete[$H_2 O$],
        ),
        [Initial],        [$0$],            [], [], [], [],
        [Intermédiaire],  [$x$],            [], [], [], [],
        [Final],          [$x = x_"max"$],  [], [], [], [],
      )
    ]

  + *Prédiction.* Le dioxyde de carbone formé est un *gaz*. Déduis du tableau la quantité de matière $n(C O_2)$ formée, puis calcule le *volume* $V(C O_2)$ de ce gaz à l'état final.
    #h(1cm) $V(C O_2) =$ #h(3cm) L
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 3
// ════════════════════════════════════════════════════════════════
#exercice[
  *Résolution de problème — 12 g + 12 g = 24 g ?*

  #emph[On pose le problème suivant :]
  #box(stroke: 1pt + rgb("8e44ad"), fill: rgb("faf5ff"), inset: 10pt, width: 100%)[
    « Quelle masse de dioxyde de carbone se forme-t-il lorsque *12 g de carbone* réagissent avec *12 g de dioxygène* ? »
    $ C + O_2 -> C O_2 $
  ]

  #box(stroke: 0.5pt + gray, fill: rgb("fafafa"), inset: 8pt, width: 100%)[
    *Données.* $M(C)$ = 12 g·mol⁻¹, #h(0.3cm) $M(O)$ = 16 g·mol⁻¹.
  ]

  + Calcule les quantités de matière initiales $n_0(C)$ et $n_0(O_2)$.
  #lignes_reponse(1)

  #set enum(start: 2)
  + Dresse le *tableau d'avancement*, identifie le *réactif limitant* et détermine $x_"max"$.
    #align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center + horizon,
        inset: 8pt,
        fill: (_, row) => if row == 0 { rgb("2563eb") } else { white },
        table.header(
          entete[État du système], entete[Avancement (mol)],
          entete[$C$ (mol)], entete[$O_2$ (mol)], entete[$C O_2$ (mol)],
        ),
        [État initial],         [$0$],            [], [], [],
        [État intermédiaire],   [$x$],            [], [], [],
        [État final],           [$x = x_"max"$],  [], [], [],
      )
    ]

  + *Réponse au problème.* Quelle est la quantité de matière de $C O_2$ formée ? En déduire sa *masse* $m(C O_2)$ (on rappelle $M(C O_2)$ = 44 g·mol⁻¹).
  #lignes_reponse(1)

  #important[
    *Loi de Lavoisier (conservation de la masse).* Au cours d'une transformation chimique, les atomes se réarrangent mais ne sont ni créés ni détruits : la *masse totale du système se conserve*. « Rien ne se perd, rien ne se crée, tout se transforme. »
  ]

  #set enum(start: 4)
  + Un élève affirme : « Puisque la masse se conserve, il doit se former $12 + 12 = 24$ g de $C O_2$. » *Explique pourquoi son raisonnement est faux*, alors que la masse se conserve bien.

  + *Vérifie la loi de Lavoisier.* Calcule la masse totale du système à l'état final (masse de $C O_2$ formé *et* masse du réactif restant en excès). Compare à la masse totale initiale (24 g). Conclus.
  #lignes_reponse(2)
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 4
// ════════════════════════════════════════════════════════════════
#exercice[
  *Détartrer une bouilloire au vinaigre*

  Au fil des utilisations, du *tartre* (carbonate de calcium $C a C O_3$, solide blanc) se dépose au fond d'une bouilloire. Pour l'éliminer, on y verse du *vinaigre*, dont le principe actif est l'acide éthanoïque $C H_3 C O O H$. La réaction de détartrage est :
  $ C a C O_3 (s) + 2 C H_3 C O O H (italic("aq")) -> C a^(2+) (italic("aq")) + 2 C H_3 C O O^- (italic("aq")) + H_2 O (l) + C O_2 (g) $

  #box(stroke: 0.5pt + gray, fill: rgb("fafafa"), inset: 8pt, width: 100%)[
    *Données.* Masses molaires atomiques : $M(C a)$ = 40 g·mol⁻¹, $M(C)$ = 12 g·mol⁻¹, $M(O)$ = 16 g·mol⁻¹.
    #linebreak()
    Masse molaire de l'acide éthanoïque : $M(C H_3 C O O H)$ = 60 g·mol⁻¹. #h(0.4cm) Volume molaire : $V_m$ = 24 L·mol⁻¹.
  ]

  Une bouilloire contient #strong[$m$ = 3,0 g] de tartre. On y verse un volume #strong[$V$ = 40 mL] de vinaigre de concentration en acide éthanoïque #strong[$c$ = 1,0 mol·L⁻¹].

  + Calcule la masse molaire $M(C a C O_3)$, puis la quantité de matière de tartre $n_0(C a C O_3)$.
  #lignes_reponse(1)

  #set enum(start: 2)
  + Calcule la quantité de matière d'acide éthanoïque $n_0(C H_3 C O O H)$ versée.
  #lignes_reponse(1)

  #set enum(start: 3)
  + Dresse le *tableau d'avancement*, détermine le *réactif limitant* et $x_"max"$.
    #align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center + horizon,
        inset: 7pt,
        fill: (_, row) => if row == 0 { rgb("2563eb") } else { white },
        table.header(
          entete[État], entete[Av. (mol)],
          entete[$C a C O_3$ (mol)], entete[$C H_3 C O O H$ (mol)], entete[$C O_2$ (mol)],
        ),
        [Initial],        [$0$],            [], [], [],
        [Intermédiaire],  [$x$],            [], [], [],
        [Final],          [$x = x_"max"$],  [], [], [],
      )
    ]

  + *Le tartre est-il entièrement éliminé ?* Justifie à partir du bilan à l'état final.

  + Calcule le *volume de dioxyde de carbone* $V(C O_2)$ dégagé (effervescence observée).
    #h(1cm) $V(C O_2) =$ #h(3cm) L

  #box(stroke: 1pt + rgb("ea580c"), fill: rgb("fff7ed"), inset: 10pt, width: 100%)[
    #text(weight: "bold")[Pour aller plus loin — stratégie et synthèse]

    *6.* En partant de la situation précédente (40 mL déjà versés), *quel volume supplémentaire* de ce même vinaigre faut-il ajouter pour dissoudre *tout le tartre restant* ? Détaille ta démarche.

    #v(4pt)

    *7.* Le vinaigre blanc du commerce est plus concentré : il est vendu « *8°* », ce qui signifie qu'il contient *80 g d'acide éthanoïque pur par litre* de solution.
    #linebreak()
    #h(0.6cm) *a)* Détermine la concentration $c'$ (en mol·L⁻¹) de ce vinaigre blanc.
    #linebreak()
    #h(0.6cm) *b)* Avec ce vinaigre blanc, quel *volume minimal* suffirait pour détartrer entièrement les 3,0 g de tartre *en une seule fois* ?
    #linebreak()
    #h(0.6cm) *c)* Le mode d'emploi conseille pourtant de « laisser agir plusieurs heures, de préférence à chaud ». Le tableau d'avancement prévoit pourtant une dissolution *totale*. Propose *deux raisons* pour lesquelles, en pratique, la dissolution n'est pas immédiate.
  ]
  #lignes_reponse(3)
]
