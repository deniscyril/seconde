#import "../../_assets/template_tp_physique.typ": *

// On applique le template à tout le document
#show: conf

#chapitre[TP — Bilan de matière d'une transformation chimique - 1ère]

*Contexte* : Le diiode $"I"_2$ réagit avec les ions thiosulfate $"S"_2"O"_3^(2-)$ selon une réaction d'oxydoréduction dont il est la *seule espèce colorée* (jaune-orangé). La couleur du mélange final renseigne donc directement sur la présence ou l'absence de diiode. L'objectif est de déterminer la composition finale du système chimique à l'aide d'un tableau d'avancement.


*Matériel par binôme* :
#columns(2, gutter: 1em)[
- solution de diiode à #box[$C_1 = 1,0 times 10^(-2) "mol" dot "L"^(-1)$] ;
- solution de thiosulfate de sodium à #box[$C_2 = 1,0 times 10^(-2) "mol" dot "L"^(-1)$] ;
#colbreak()
- 4 béchers de 100 mL, éprouvettes graduées de 10 mL et 50 mL ;
- agitateur magnétique + barreau
- burette graduée de 25 mL sur support (partie 4) ;
]

//#important[Le diiode tache la peau et les vêtements : port des gants et des lunettes obligatoire.]

#important[L'équation de la réaction est :
$"I"_2 ("aq") + 2 thin "S"_2"O"_3^(2-) ("aq") -> 2 thin "I"^- ("aq") + "S"_4"O"_6^(2-) ("aq")$

L'état final est atteint lorsque l'un des réactifs, appelé *réactif limitant*, a été entièrement consommé : il n'en reste plus dans le bécher et les quantités de matière n'évoluent plus.

Dans le tableau d'avancement, la case du réactif limitant à l'état final vaut donc *zéro*.]

// Tableau d'avancement : une colonne par espèce, alignée sous l'équation.
// prerempli: true → la case de I2 à l'état intermédiaire est donnée en exemple.
#let tableau-avancement(titre, prerempli: false) = align(center, figure(
  table(
    columns: (auto, auto, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    inset: 7pt,
    table.cell(colspan: 2)[*Équation*],
    [$"I"_2$], [$+ quad 2 thin "S"_2"O"_3^(2-)$], [$-> quad 2 thin "I"^-$], [$+ quad "S"_4"O"_6^(2-)$],
    [*État*], [*Avancement (mmol)*],
    [$n("I"_2)$], [$n("S"_2"O"_3^(2-))$], [$n("I"^-)$], [$n("S"_4"O"_6^(2-))$],
    [Initial], [$x = 0$], [], [], [], [],
    [Intermédiaire], [$x$], if prerempli [$n_0("I"_2) - x$] else [], [], [], [],
    [Final], [$x = x_f$], [], [], [], [],
  ),
  caption: titre,
  supplement: none,
))

= Expérience 1

#experience[
  - Dans le Bécher ① verser $V_1 = 10$ mL de solution de diiode.
  - Dans le Bécher ② verser  $V_2 = 40$ mL de solution de thiosulfate de sodium.
  - Verser le contenu du bécher ① dans le bécher ②, agiter et observer.
]

#travail[
  + Schématiser la situation avant réaction (béchers, couleurs et contenus).
  + Réaliser l'expérience. En déduire comment évolue la quantité de diiode au cours de la transformation.
  + À côté du schéma, représenter le bécher contenant le mélange une fois la réaction chimique terminée (état final), en indiquant sa couleur.
  + Identifier le *réactif limitant* en justifiant à partir des observations.
]

= Bilan de matière

#travail[
  5. Calculer les quantités de matière initiales $n_0("I"_2)$ et $n_0("S"_2"O"_3^(2-))$, exprimées en mmol.
  + Compléter les lignes « initial » et « intermédiaire » du tableau 1.
  + À l'aide de la question 4, calculer l'avancement final $x_f$.
  + En déduire les quantités finales de toutes les espèces (réactifs et produits). Compléter entièrement le tableau d'avancement.
]

#tableau-avancement([Tableau 1 — Expérience 1], prerempli: true)

= Expérience 2 : prévoir avant d'observer

On mélange maintenant $V_1 = 30$ mL de solution de diiode et $V_2 = 40$ mL de solution de thiosulfate. Cette fois, on utilise le tableau d'avancement *avant* de faire l'expérience.

#travail[
  9. Calculer les nouvelles quantités initiales. Sur le compte rendu, construire le tableau d'avancement de l'expérience 2 sur le modèle du tableau 1, et compléter les lignes « initial » et « intermédiaire ».
  + On ne sait pas encore quel réactif est limitant. Calculer la valeur que prendrait $x_f$ si $"I"_2$ était limitant, puis celle qu'il prendrait si $"S"_2"O"_3^(2-)$ était limitant.
  + Une seule de ces deux valeurs est possible : laquelle ? Justifier en calculant, avec l'autre valeur, la quantité finale du second réactif. En déduire le réactif limitant.
  + Compléter la ligne « final » de ce tableau et prévoir la couleur du mélange final.
]

#experience[
  - Bécher ① : $V_1 = 30$ mL de solution de diiode.
  - Bécher ② : $V_2 = 40$ mL de solution de thiosulfate de sodium.
  - Verser le contenu du bécher ① dans le bécher ②, agiter et observer.
]

#travail[
  13. Réaliser l'expérience et confronter l'observation à la prévision.
]

= Vers le mélange stœchiométrique

Un mélange est dit *stœchiométrique* lorsque les réactifs sont introduits dans les proportions des nombres stœchiométriques de l'équation : *ils sont alors entièrement consommés* en même temps.

#travail[
  14. Pour un mélange stœchiométrique, que valent, dans le tableau d'avancement, les quantités finales des deux réactifs ? En déduire la relation entre $n_0("I"_2)$ et $n_0("S"_2"O"_3^(2-))$.
  + En déduire le volume $V_"E"$ de solution de diiode à verser dans $40$ mL de solution de thiosulfate pour obtenir un mélange stœchiométrique.
  + Prévoir la couleur du mélange stœchiométrique à l'état final. Peut-on, à la seule vue de la couleur, le distinguer d'un mélange où le thiosulfate est en excès ?
]

#experience[
  - Placer $40$ mL de solution de thiosulfate dans un bécher, et la solution de diiode dans la burette.
  - Verser le diiode mL par mL en agitant, puis goutte à goutte à l'approche du volume $V_"E"$ prévu.
  - Arrêter dès que la teinte jaune persiste dans le mélange. Noter le volume versé.
]

//#important[Le changement de teinte est très net : à l'approche de $V_"E"$, ne verser qu'une goutte à la fois.]

#travail[
  17. Comparer le volume versé à la valeur $V_"E"$ calculée.
  + Expliquer pourquoi l'apparition d'une teinte jaune persistante signale que le mélange stœchiométrique vient d'être dépassé.
]

