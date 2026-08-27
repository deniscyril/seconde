#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf

#chapitre[Avancement d'une transformation chimique]

// #box(stroke: 0.5pt, inset: 8pt, width: 100%)[
//  *Activité de découverte guidée — simulateur interactif.*
//  Au cours d'une transformation, les réactifs sont consommés et les produits sont formés. L'#emph[avancement] $x$ (en mol) mesure « combien » la réaction a progressé. Cette activité te fait découvrir, à l'aide d'une simulation, les notions de #emph[réactif limitant], d'#emph[avancement maximal] $x_"max"$ et de #emph[mélange stœchiométrique].
//]

#box(stroke: 0.5pt + rgb("2563eb"), fill: rgb("f0f9ff"), inset: 8pt, width: 100%)[
  *Comment utiliser la simulation ?*
  - Choisis la réaction dans le *menu déroulant* en haut.
  - Règle les quantités initiales avec les boutons *+* et *−* (pas de 1 mol).
  - Déplace le *curseur d'avancement* $x$ (pas de 0,1 mol) : tout se met à jour en temps réel.
  - Déplie les encarts *« Repérage du réactif limitant »* et *« Tableau d'avancement »* quand on te le demande.
]

= Etude de $C + O_2 -> C O_2$

#emph[Dans le menu, sélectionne la réaction $C + O_2 -> C O_2$. *Laisse les quantités initiales proposées par défaut.*]

==  Lire l'équation

#travail[
+ *Réactifs et produits.* Recopie l'équation, puis entoure les réactifs et souligne le produit.
+ Que représentent les *trois barres* de l'histogramme ? Que représente leur *hauteur* ?
]

== Faire évoluer la réaction

#emph[Place le curseur sur $x = 0$, puis augmente-le progressivement en observant l'histogramme.]

#travail[
+ Quand $x$ *augmente*, quelles barres *diminuent* ? Laquelle *augmente* ? Explique en 2 phrases.
+ *Prédiction.* D'après toi, la réaction peut-elle continuer indéfiniment ? Pourquoi ?
]

==  Le réactif limitant et $x_"max"$

#emph[Avance le curseur jusqu'au bout (jusqu'à ce qu'il devienne rouge).]

#travail[
+ Quelle est la valeur *maximale* de l'avancement ? On la note $x_"max"$.
  #h(1cm) $x_"max"$ = #h(2cm) mol
+ À cette valeur, quel réactif a totalement *disparu* (barre à zéro) ? Ce réactif s'appelle le *réactif limitant*.
+ Déplie l'encart *« Repérage du réactif limitant »*. Recopie les deux calculs de quotient affichés, et explique pourquoi le plus petit donne $x_"max"$.
]


#important[
  - Le réactif limitant est celui qui est entièrement consommé lors de la réaction. Sa disparition provoque l'arrêt de la transformation chimique, les quantités de matières sont alors figées. L'état final est atteint.
  - A l'état final correspond une valeur particulière de l'avancement: $x_"max"$ ]
#travail[
+ *Vérifie ta compréhension.* Pourquoi serait-il *absurde* que l'avancement dépasse $x_"max"$ ? (Pense à ce que deviendrait la quantité du réactif limitant.)
]

== Le cas particulier du mélange stœchiométrique

#emph[Avec les boutons + et −, règle les quantités pour avoir #strong[autant de C que de $O_2$] (par exemple 4 mol et 4 mol).]

#travail[
+ Avance le curseur jusqu'à $x_"max"$. Que remarques-tu sur les *deux réactifs* à la fin ?
+ Déplie l'encart "Repérage du réactif limitant" : que valent les *proportions stoechiométriques* des réactifs ? Comment qualifie-t-on cette situation ?
+  Dans cette situation, aucun réactif n'est gaspillé : tout est consommé. En quoi est-ce une situation *intéressante pour un chimiste* (coût, déchets, pureté du produit) ?
]


= Etude de $2 H_2 + O_2 -> 2 H_2 O$


== Prédire avant de simuler

✋🏻#emph[Réponds d'abord #strong[sans utiliser la simulation] ]

Soit la réaction $2 H_2 + O_2 -> 2 H_2 O$. Les quantités de matières initiales sont #strong[$n_0(H_2)$ = 6 mol] et #strong[$n_0(O_2)$ = 5 mol]
#travail[
+ *Intuition.* Sans calcul, lequel des deux réactifs penses-tu qui sera limitant ? Note ton intuition (on vérifiera après).
+ *Calcule* les proportions stoechiométriques des réactifs à la main.
]

#align(center)[
  #table(
    columns: 2,
    stroke: none,
    align: left,
    inset: 4pt,
    [pour $H_2$ : #h(0.3cm) $(n_0(H_2)) / 2 = ... div 2 = ...$ #h(1.5cm) mol],
    [pour $O_2$ : #h(0.3cm) $(n_0(O_2)) / 1 = ... div 1 = .....$ #h(1.5cm) mol],
  )
]

#travail[
#set enum(start: 3)
+ En déduire la valeur de $x_"max"$ puis le réactif limitant.
+ A l'aide de la simulation, vérifie et corrige si nécessaire tes réponses aux questions précédentes.
+ Complète le tableau ci-dessous.
#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto),
    align: center + horizon,
    inset: 8pt,
    fill: (_, row) => if row == 0 { rgb("2563eb") } else { white },
    table.header(
      text(fill: white, weight: "bold")[État du système],
      text(fill: white, weight: "bold")[Avancement],
      text(fill: white, weight: "bold")[$H_2$ (mol)],
      text(fill: white, weight: "bold")[$O_2$ (mol)],
      text(fill: white, weight: "bold")[$H_2 O$ (mol)],
    ),
    [État initial], [$0$], [], [], [],
    [État intermédiaire], [$x$], [], [], [],
    [État final], [$x = x_"max"$], [], [], [],
  )
]
]

== Vérifier avec la simulation

#travail[
+ Déplie l'encart de repérage et le tableau d'avancement de la simulation. Tes calculs correspondent-ils ? Corrige si besoin.
+ *Lecture du graphique $n(x)$.* Observe les deux droites des réactifs. Laquelle *descend le plus vite* ? Quelle est sa pente (ou son coefficient directeur) ?
+ Explique le lien entre la pente de la droite d'un réactif donné et  son *coefficient stœchiométrique*.
+ L'affirmation suivante est-elle correcte ? "Le réactif dont la quantité de manière initiale est la plus petite est le réactif limitant" Rédige une réponse argumentée.
]


= $4 A l + 3 O_2 -> 2 A l_2 O_3$



== Premier état initial

#emph[Quantités de matière initiales:  #strong[$n_0(A l)$ = 8 mol] et #strong[$n_0(O_2)$ = 9 mol].]

#travail[
+ Calcule les proportions stoechiométriques de chaque réactif (attention aux coefficients 4 et 3 !), identifie le réactif limitant et donne $x_"max"$.
+ Combien de moles  d'$A l_2 O_3$ obtient-on ? 
+ Rédige et complète un tableau d'avancement complet.
+ *Vérification.* Compare ton tableau avec la simulation. Écart éventuel ? Explication ?
]

== Changer l'état initial

#emph[Quantités de matière initiales: #strong[$n_0(A l)$ = 12 mol] et #strong[$n_0(O_2)$ = 6 mol].]

#travail[
+ Le réactif limitant est-il le *même* qu'à la question A ? Justifie par le calcul des proportions stoechiométriques.
+ Ce résultat te surprend-il ? Que t'apprend-il sur l'importance des *coefficients* dans la détermination du limitant ?
]

== Raisonner à l'envers : viser le mélange stœchiométrique

#travail[
+ *On part de $n_0(A l)$ = 12 mol.* Quelle quantité de $O_2$ faut-il pour obtenir un *mélange stœchiométrique* (aucun réactif en excès) ? Pose ton raisonnement, puis vérifie en réglant cette valeur dans la simulation.
+ Vérifie : à $x_"max"$, les deux réactifs tombent-ils bien à zéro en même temps ?
]

#box(stroke: 1pt + rgb("ea580c"), fill: rgb("fff7ed"), inset: 10pt, width: 100%)[
  #text(size: 13pt, weight: "bold")[🏭 Défi final — Le chimiste à l'usine]

  Une entreprise produit de l'*alumine* ($A l_2 O_3$), utilisée pour fabriquer du papier de verre et des céramiques techniques, par combustion de l'aluminium :
  $ 4 A l + 3 O_2 -> 2 A l_2 O_3 $

  L'ingénieur veut produire une masse #strong[$m(A l_2 O_3)$ = 408 g] d'alumine, sans gaspiller un seul gramme d'aluminium (qui coûte cher), alors que le dioxygène est quasiment gratuit (pris dans l'air).

  *Données — masses molaires atomiques :* #h(0.5cm) $M(A l)$ = 27 g·mol⁻¹ #h(0.8cm) $M(O)$ = 16 g·mol⁻¹

  #v(4pt)
  *a)* Calcule la masse molaire de l'alumine $M(A l_2 O_3)$, puis la quantité de matière $n(A l_2 O_3)$ à produire.

  *b)* Quelle quantité d'aluminium $n_0(A l)$ faut-il introduire au minimum ?

  *c)* Quelle quantité de dioxygène $n_0(O_2)$ garantit que *tout l'aluminium* soit consommé, sans en manquer (mélange stœchiométrique) ?

  *d)* L'ingénieur décide finalement d'introduire un *léger excès de $O_2$*. Pourquoi ce choix est-il malin sur le plan économique ? (réfléchis au coût de chaque réactif et au risque de gâcher l'aluminium)

  #v(4pt)
  #emph[Pose tes calculs, puis vérifie tes réponses b) et c) en réglant ces quantités dans la simulation.]
]

