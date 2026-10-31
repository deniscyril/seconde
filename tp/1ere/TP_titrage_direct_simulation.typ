#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Titrage direct : de la simulation au calcul - 1ère]

*Contexte* : Un titrage permet de déterminer la quantité de matière (ou la concentration) d'une espèce en solution en la faisant réagir avec une autre espèce de concentration connue. À l'aide d'une simulation, tu vas observer ce qui se passe dans le bécher, goutte après goutte. Tu en déduiras le vocabulaire du titrage puis la relation qui permet d'exploiter l'équivalence par le calcul.

//*Matériel par binôme* : ordinateur ou tablette avec la simulation « Titrage colorimétrique » ; calculatrice.

// ── Outils de mise en page locaux ──────────────────────────────
#let trou(l: 3cm) = box(width: l, repeat[.])
#let lignes(n) = {
  for i in range(n) { v(0.55cm); line(length: 100%, stroke: (paint: luma(170), dash: "dotted")) }
  v(0.2cm)
}
#let retenir(titre, corps) = block(
  width: 100%, inset: 9pt, radius: 4pt,
  stroke: 1pt + rgb("#2563eb"), fill: rgb("#eff6ff"),
)[*#titre* \ #corps]
#let vide = h(1.4cm)

#important[N'ouvre *pas* la rubrique « Comprendre — les trois moments clés du titrage » en bas de la page de la simulation avant la partie 5 : c'est toi qui dois trouver ce qu'elle contient !]

= 1. Le montage et les deux acteurs du titrage

#experience[
  Ouvre la simulation. Dans « Réaction support du titrage », choisis *Réaction générique* puis *A + B*. Laisse cochée la case « Faire apparaître les produits formés ». Clique sur *Réinitialiser*.
]

#travail[
  + Quelle espèce se trouve dans le *bécher* au départ ? Quelle espèce se trouve dans la *burette* ?
    #lignes(1)
  + Combien de symboles de A le bécher contient-il au départ ? n(A)#sub[initial] = #trou(l: 2cm) paquets.
  + Dans un titrage, on cherche à déterminer la quantité de l'espèce placée dans le bécher : on l'appelle l'*espèce titrée*. L'espèce de concentration *connue*, versée avec la burette, est l'*espèce titrante*. Complète :
    - espèce titrée : #trou() (placée dans #trou()) ;
    - espèce titrante : #trou() (placée dans #trou()).
  + A et B réagissent ensemble : c'est la *réaction support du titrage*. Recopie son équation telle qu'elle est affichée.
    #lignes(1)
]

#retenir[À retenir — la réaction support du titrage][
  C'est la réaction entre l'espèce #trou() et l'espèce #trou(). Pour qu'un titrage soit possible, elle doit être *rapide*, *totale* (un des réactifs disparaît complètement) et *unique* (aucune autre réaction ne consomme les réactifs).
]

= 2. Goutte après goutte : avant l'équivalence

#experience[
  Clique *quatre fois*, lentement, sur « Une goutte ». Après chaque goutte, observe le bécher et relève les valeurs affichées sous le montage.
]

#travail[
  + Complète le tableau.
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      inset: 6pt,
      [Nombre de gouttes], [0], [1], [2], [3], [4],
      [V versé (mL)], [0], vide, vide, vide, vide,
      [A restant], [], vide, vide, vide, vide,
      [B versé], [0], vide, vide, vide, vide,
      [B en excès], [0], vide, vide, vide, vide,
    )
  + Que deviennent les symboles de B qui tombent dans le bécher ? Les retrouve-t-on dans la solution ?
    #lignes(2)
  + Un réactif qui est entièrement consommé est le *réactif limitant*. Avant l'équivalence, quel est le réactif limitant : A ou B ? Justifie avec une valeur du tableau.
    #lignes(2)
  + Que deviennent les symboles de A qui ont réagi ? (Regarde les symboles ■.)
    #lignes(1)
]

= 3. L'équivalence

#experience[
  Clique sur « Verser en continu » et observe attentivement le compteur « A restant ». Clique sur « ⏸ Arrêter » *dès que* le compteur atteint 0.
]

#travail[
  + Relève le volume versé lorsque A restant devient nul : c'est le *volume à l'équivalence*.
    V#sub[éq] = #trou(l: 2cm) mL #h(1cm) B versé à l'équivalence : n(B)#sub[éq] = #trou(l: 2cm) paquets.
  + À cet instant précis, reste-t-il du A dans le bécher ? Y a-t-il du B en excès ?
    #lignes(1)
  + Compare n(A)#sub[initial] (partie 1) et n(B)#sub[éq]. Quel lien vois-tu avec les coefficients de l'équation A + B → produits ?
    #lignes(2)
]

#retenir[À retenir — l'équivalence][
  L'équivalence est atteinte lorsque l'espèce titrante versée et l'espèce titrée initialement présente ont été introduites dans les *proportions stœchiométriques* : les deux réactifs sont alors #trou(l: 5cm). \
  C'est aussi le moment où le réactif limitant #trou(l: 5cm).
]

= 4. Après l'équivalence et repérage de l'équivalence

#experience[
  Verse encore quatre gouttes, une par une, avec « Une goutte ». Ouvre ensuite la rubrique « Graphique — quantités en fonction du volume versé ».
]

#travail[
  + Que deviennent maintenant les symboles de B qui tombent dans le bécher ? Comment évolue le compteur « B en excès » ?
    #lignes(2)
  + Après l'équivalence, quel est le réactif limitant ? Justifie.
    #lignes(1)
  + Observe la couleur de la solution du bécher avant puis après l'équivalence. Explique pourquoi un changement de couleur *persistant* permet de repérer l'équivalence lors d'un titrage colorimétrique.
    #lignes(2)
  + Sur le graphique, décris l'évolution de chacune des deux courbes. Comment lit-on V#sub[éq] sur ce graphique ?
    #lignes(3)
]

= 5. Le rôle des coefficients stœchiométriques

On note l'équation de la réaction support sous la forme générale : #h(0.3cm) $a thin "A" + b thin "B" -> "produits"$.

#experience[
  Choisis *A + 2 B*. Clique *une seule fois* sur « Une goutte » et observe le bécher : combien de ▲B sont arrivés ? Combien de ●A ont disparu ?
]

#travail[
  + Pour l'équation A + 2 B : un ●A réagit avec #trou(l: 1.5cm) ▲B. Le bécher contient #trou(l: 1.5cm) ●A au départ.
    *Avant de verser*, prévois le nombre de ▲B qu'il faudra verser pour atteindre l'équivalence : n(B)#sub[éq] prévu = #trou(l: 2cm).
]

#experience[
  Verse jusqu'à l'équivalence pour vérifier ta prévision. Recommence ensuite avec *2 A + B*, puis avec l'exemple réel *Fe²⁺ titré par MnO₄⁻* (lis les coefficients a et b dans l'équation affichée). Pense à réinitialiser entre deux essais.
]

#travail[
  + Complète le tableau (reprends la ligne A + B de la partie 3).
    #table(
      columns: (1.6fr, auto, auto, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      inset: 6pt,
      [Équation], [a], [b], [n(A)#sub[initial]], [n(B)#sub[éq]], [V#sub[éq] (mL)], [$display(n("A")_"initial"/a)$], [$display(n("B")_"éq"/b)$],
      [A + B], [1], [1], vide, vide, vide, vide, vide,
      [A + 2 B], vide, vide, vide, vide, vide, vide, vide,
      [2 A + B], vide, vide, vide, vide, vide, vide, vide,
      [Fe²⁺ / MnO₄⁻], vide, vide, vide, vide, vide, vide, vide,
    )
  + Un élève affirme : « À l'équivalence, on a toujours versé autant de B qu'il y avait de A au départ. » A-t-il raison ? Justifie avec le tableau.
    #lignes(2)
  + Compare les deux dernières colonnes du tableau. Déduis-en la relation entre n(A)#sub[initial], n(B)#sub[éq], a et b.
    #lignes(2)
  + Pour A + B et A + 2 B, la quantité initiale de A est la même. Pourquoi V#sub[éq] est-il deux fois plus grand dans le second cas ?
    #lignes(2)
]

#retenir[À retenir — la relation à l'équivalence][
  Pour un titrage dont la réaction support s'écrit $a thin "A" + b thin "B" -> "produits"$ (A titré, B titrant), à l'équivalence :
  #align(center)[#v(0.3cm) $display(n("A")_"initial" / #box(width: 1cm, repeat[.])) = display(n("B")_"éq" / #box(width: 1cm, repeat[.]))$ #v(0.3cm)]
  Tu peux maintenant ouvrir la rubrique « Comprendre » de la simulation pour vérifier ta conclusion.
]

= 6. Des paquets aux calculs : exploiter l'équivalence

Au laboratoire, on ne compte pas des paquets : on mesure des *volumes*. La quantité de titrant versée à l'équivalence se calcule avec la concentration connue c#sub[B] de la solution titrante :
#align(center)[$n("B")_"éq" = c_B times V_"éq"$]

#important[Dans $n = c times V$, le volume s'exprime en *litres* si la concentration est en mol·L#super[−1] : pense à convertir les mL en L (1 mL = 10#super[−3] L).]

== Exercice guidé — dosage des ions fer(II)

On titre V#sub[0] = 20,0 mL d'une solution contenant des ions Fe²⁺ par une solution de permanganate de potassium de concentration c = 2,00 × 10#super[−2] mol·L#super[−1]. Le volume versé à l'équivalence (persistance de la teinte violette) est V#sub[éq] = 12,4 mL. La réaction support du titrage s'écrit :
#align(center)[$5 thin "Fe"^(2+) + "MnO"_4^- + 8 thin "H"^+ -> 5 thin "Fe"^(3+) + "Mn"^(2+) + 4 thin "H"_2"O"$]

#travail[
  + *Identifier.* Espèce titrée : #trou() a = #trou(l: 1cm) #h(1cm) Espèce titrante : #trou() b = #trou(l: 1cm)
  + *Calculer la quantité de titrant versée à l'équivalence.*
    n(MnO₄⁻)#sub[éq] = c × V#sub[éq] = #trou(l: 2.5cm) × #trou(l: 2.5cm) = #trou(l: 3cm) mol
  + *Écrire la relation à l'équivalence* avec les coefficients de cette équation, puis l'utiliser pour exprimer n(Fe²⁺)#sub[initial].
    #lignes(2)
    n(Fe²⁺)#sub[initial] = #trou(l: 3cm) mol
  + *Calculer la concentration de la solution titrée.*
    [Fe²⁺] = $display("n"("Fe"^(2+))_"initial" / V_0)$ = #trou(l: 3cm) = #trou(l: 3cm) mol·L#super[−1]
]

== Exercice en autonomie — dosage du diiode

On titre V#sub[0] = 10,0 mL d'une solution de diiode I#sub[2] (jaune-brun) par une solution de thiosulfate de sodium de concentration c = 1,00 × 10#super[−1] mol·L#super[−1] (incolore). La solution du bécher se décolore pour V#sub[éq] = 8,0 mL. Réaction support du titrage :
#align(center)[$"I"_2 + 2 thin "S"_2"O"_3^(2-) -> 2 thin "I"^- + "S"_4"O"_6^(2-)$]

#travail[
  + Identifie l'espèce titrée et l'espèce titrante, ainsi que leurs coefficients a et b.
  + Ici, l'équivalence se repère par une *décoloration* et non par l'apparition d'une couleur. Explique pourquoi, en utilisant la notion de réactif limitant.
  + En suivant les mêmes étapes que l'exercice guidé, détermine la concentration en diiode de la solution titrée.
  #lignes(8)
]

= 7. Bilan : le vocabulaire du titrage direct

#travail[
  Rédige une définition courte (une phrase) pour chaque terme.
  #table(
    columns: (auto, 1fr),
    inset: 8pt,
    align: (left + horizon, left),
    [*Réaction support du titrage*], [#v(1.1cm)],
    [*Espèce titrée*], [#v(1.1cm)],
    [*Espèce titrante*], [#v(1.1cm)],
    [*Équivalence*], [#v(1.1cm)],
    [*Proportions stœchiométriques*], [#v(1.1cm)],
    [*Relation à l'équivalence*], [#v(1.1cm)],
  )
]
