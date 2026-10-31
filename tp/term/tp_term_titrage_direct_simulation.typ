#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Titrage direct : vocabulaire et exploitation de l'équivalence - Terminale]

// Raccourcis
#let molL = [mol·L#super[−1]]
#let gmol = [g·mol#super[−1]]
#let trou(l: 2.5cm) = box(width: l, repeat[.])
#let vide = []

*Contexte* : Le titrage direct revient très souvent à l'écrit du bac et aux ECE. Tu vas réactiver le vocabulaire et la relation à l'équivalence à l'aide de la simulation, puis l'appliquer à un titrage par le permanganate puis à un titrage acide-base.
= Le vocabulaire en dix minutes

#experience[
  Ouvre la simulation, choisis *Réaction générique* puis *A + B*. Clique trois fois sur « Une goutte » en observant le bécher, puis « Verser en continu » jusqu'à ce que la burette soit vide. Ouvre enfin le graphique. Ne consulte *pas* la rubrique « Comprendre ».
]

#travail[
  #Q[Complète le tableau à partir de tes observations. Chaque définition doit tenir en une phrase.]
  #table(
    columns: (auto, 1fr),
    inset: 7pt,
    align: (left + horizon, left),
    [*Notion clé*],[*Définition* ],
    [*Réaction support du titrage*], [#v(1cm)],
    [*Espèce titrée* \ (où ? concentration ?)], [#v(1cm)],
    [*Espèce titrante* \ (où ? concentration ?)], [#v(1cm)],
    [*Équivalence*], [#v(1cm)],
    [*Proportions stœchiométriques*], [#v(1cm)],
  )
  #Q[Quel est le réactif limitant avant l'équivalence ? après l'équivalence ? Justifie chaque réponse par une observation de la simulation (compteurs ou graphique).]
  #lignes_reponse(3)

]

= La relation à l'équivalence

#experience[
  Pour *2 A + B* puis *A + 2 B* : réinitialise, verse jusqu'à l'équivalence (« A restant » = 0) et relève le nombre de B versés.
]

#travail[
  #Q[Complète le tableau.]
  #align(center)[
    #table(
      columns: 4,
      align: center + horizon,
      inset: (x: 0.8em, y: 0.5em),
      [Équation], [$n("A")_"initial"$], [$n("B")_"éq"$], [$V_"éq"$ (mL)],
      [2 A + B], vide, vide, vide,
      [A + 2 B], vide, vide, vide,
    )
  ]
  #Q[À l'équivalence, A et B ont été introduits dans les *proportions stœchiométriques* de l'équation. Pour chacune des deux équations, propose une relation entre $n("A")_"initial"$ et $n("B")_"éq"$ qui traduit ces proportions, puis vérifie-la avec les valeurs du tableau.]
  #lignes_reponse(3)
]

#définition[
  À l'équivalence d'un titrage, la quantité de matière *initiale de l'espèce titrée* et la quantité de matière *d'espèce titrante versée* sont dans les *proportions stœchiométriques* de la réaction support. \


  _Exemple_ : pour 2 A + B → produits (A titré, B titrant), 2 A réagissent avec 1 B, donc à l'équivalence
  $ n("A")_"initial" / 2 = n("B")_"éq" / 1 quad "soit" quad n("A")_"initial" = 2 times n("B")_"éq" $
]

#important[
  *Avant tout calcul*, fais un schéma pose toi les questions ci-dessous:

#align(center)[
  #table(
    columns: (auto, 1fr, 1fr),
    align: (left + horizon, center + horizon, center + horizon),
    inset: (x: 0.8em, y: 0.5em),
    table.header([*Questionnement *], [*Espèce titrée*], [*Espèce titrante*]),
    [Où se trouve-t-elle ?], [bécher ou erlenmeyer], [burette],
    [Sa quantité de matière \ ou sa concentration est…], [inconnue (on la cherche)], [connue],
    [Volume associé], [$V_"prélevé"$ à la pipette jaugée], [$V_"éq"$ lu à la burette],
  )
]

]

= Application : titrage des ions fer(II) par le permanganate

#experience[
  Dans la simulation, choisis *Exemple réel : Fe²⁺ titré par MnO₄⁻*. Verse goutte à goutte jusqu'à l'équivalence, puis encore quelques gouttes. Les ions permanganate $"MnO"_4^-$ sont violets ; toutes les autres espèces sont incolores ou très peu colorées en solution diluée.
]

#travail[
  #Q[Identifie l'espèce titrée et l'espèce titrante. Justifie ta réponse.]
  #lignes_reponse(2)
  #Q[Explique pourquoi la solution du bécher reste incolore avant l'équivalence et devient violette juste après.]
  #lignes_reponse(2)
  #Q[À partir de l'équation affichée, propose une relation entre $n("Fe"^(2+))_"initial"$ et $n("MnO"_4^-)_"éq"$ traduisant les proportions stœchiométriques à l'équivalence. Vérifie qu'elle est cohérente avec les valeurs de la simulation.]
  #lignes_reponse(2)
]
#important[*Aucun calcul avant le schéma !* Le schéma est ton outil pour savoir à quelle solution appartient chaque concentration et chaque volume.]

// Numérotation des questions indépendante pour ce bloc
#question-compteur.update(0)
#application[
*Un médicament contre l'anémie.* Un comprimé de sulfate de fer(II) est dissous dans une fiole jaugée de 100,0 mL complétée à l'eau distillée acidifiée : on obtient la solution S. On prélève $V_1 = 20,0$ mL de S, que l'on titre par une solution de permanganate de potassium de concentration $c_2 = 5,00 times 10^(-3)$ #molL. La teinte violette persiste à partir de $V_"éq" = 11,4$ mL. La notice indique *80 mg de fer* par comprimé. Donnée : $M("Fe") = 55,8$ #gmol.


  #Q[Fais un schéma légendé de ce titrage (formules des espèces chimiques, emplacement, concentration, volume de chaque espèce).]
  //#lignes_reponse(3)
  #Q[Un élève écrit : « $n("Fe"^(2+)) = n("MnO"_4^-)_"éq" / 5$ ». En raisonnant sur les proportions stœchiométriques, explique son erreur.]
  //#lignes_reponse(2)
  #Q[Calcule $n("MnO"_4^-)_"éq"$, puis $n("Fe"^(2+))$ dans le prélèvement de 20,0 mL.]
  //#lignes_reponse(3)
  #Q[Déduis-en la quantité de matière, puis la masse de fer contenue dans un comprimé. Le résultat est-il conforme à la notice ?]
  //#lignes_reponse(4)
]

= Exercice type bac : contrôle d'un nettoyant ammoniacal

// Numérotation des questions indépendante pour ce bloc
#question-compteur.update(0)
#exercice[
  Un laboratoire de contrôle dispose d'une solution d'acide chlorhydrique de concentration $c = 5,00 times 10^(-2)$ #molL. Il souhaite vérifier l'étiquette d'un nettoyant ménager à l'ammoniac, qui annonce une concentration en ammoniac $"NH"_3$ de 1,0 #molL.

  Le technicien dilue dix fois le nettoyant ; il obtient la solution $S_d$. Il remplit une burette graduée de 25 mL avec l'acide chlorhydrique. À l'aide d'une pipette jaugée, il prélève $V_d = 10,0$ mL de $S_d$ qu'il verse dans un bécher, ajoute quelques gouttes de rouge de méthyle, puis place le bécher sur un agitateur magnétique. La solution, initialement jaune, vire à l'orange pour un volume d'acide versé de 19,4 mL.

  _Données_ : l'ammoniac $"NH"_3$ est la base du couple $"NH"_4^+$(aq) / $"NH"_3$(aq) ; l'acide chlorhydrique est une solution d'ions oxonium $"H"_3"O"^+$(aq), acide du couple $"H"_3"O"^+$(aq) / $"H"_2"O"$(l). Les ions chlorure ne participent pas à la réaction.

  #Q[Réalise un *schéma légendé* du dispositif de titrage. La légende doit faire apparaître : le nom de chaque verrerie, la solution qu'elle contient (nom *et* concentration ou volume) et le statut de chaque espèce (titrée ou titrante).]
//  #rect(width: 100%, height: 7cm, stroke: (paint: gray, dash: "dashed"), radius: 4pt)
  #Q[Écris l'équation de la réaction support du titrage.]
//  #lignes_reponse(2)
  #Q[Remplis la carte d'identité du titrage. L'acide chlorhydrique est cité en premier dans l'énoncé : est-ce pour autant l'espèce titrée ?]
//  #lignes_reponse(3)
  #Q[Comment le technicien repère-t-il l'équivalence ?]
//  #lignes_reponse(2)
  #Q[Traduis les proportions stœchiométriques à l'équivalence par une relation entre $n("NH"_3)_"initial"$ et $n("H"_3"O"^+)_"éq"$, puis calcule la concentration $c_d$ en ammoniac de la solution $S_d$.]
//  #lignes_reponse(4)
  #Q[Déduis-en la concentration en ammoniac du nettoyant et compare-la à l'indication de l'étiquette.]
//  #lignes_reponse(3)
]

= Exercice type bac : contrôle d'un dégriseur pour bois

// Numérotation des questions indépendante pour ce bloc
#question-compteur.update(0)
#exercice[
  Pour redonner leur teinte d'origine aux terrasses en bois grisées par le temps, on utilise un « dégriseur » : une solution aqueuse d'*acide oxalique* $"H"_2"C"_2"O"_4$. Son étiquette indique une concentration massique en acide oxalique de 50 g·L#super[−1]. L'acide oxalique est un *diacide* : chaque molécule peut céder deux ions $"H"^+$.

  La solution commerciale étant trop concentrée pour être titrée directement, un technicien la dilue : à l'aide d'une pipette jaugée de 10,0 mL, il prélève la solution commerciale $S_0$ et la verse dans une fiole jaugée de 100,0 mL, qu'il complète jusqu'au trait de jauge avec de l'eau distillée. Il obtient la solution $S_d$.

  Il prélève ensuite $V_d = 10,0$ mL de $S_d$ à la pipette jaugée, les verse dans un bécher et ajoute quelques gouttes de phénolphtaléine. Il remplit une burette graduée de 25 mL avec une solution d'hydroxyde de sodium (soude) de concentration $c_B = 1,00 times 10^(-1)$ #molL et place le bécher sur un agitateur magnétique. La solution, initialement incolore, prend une teinte rose persistante pour un volume de soude versé de 10,8 mL.

  _Données_ : la réaction support du titrage a pour équation
  $ "H"_2"C"_2"O"_4 ("aq") + 2 thin "HO"^- ("aq") -> "C"_2"O"_4^(2-) ("aq") + 2 thin "H"_2"O" ("l") $
  $M("H"_2"C"_2"O"_4)$ = 90,0 #gmol ; la phénolphtaléine est incolore en milieu acide et rose en milieu basique.

  
  #Q[Réalise un *schéma détaillé* en deux étapes, en notant sur chaque verrerie la solution qu'elle contient, son volume et sa concentration (écris « ? » si elle est inconnue) :
    - étape 1, la *dilution* : de la solution $S_0$ à la solution $S_d$ ;
    - étape 2, le *titrage* : burette, bécher, agitateur, en précisant l'espèce titrée et l'espèce titrante.]
  #Q[Quelle est la concentration recherchée par le titrage : celle de $S_0$ ou celle de $S_d$ ? Calcule le facteur de dilution $F$.]
  #Q[D'après l'équation, combien d'ions hydroxyde faut-il pour consommer une molécule d'acide oxalique ? Traduis les proportions stœchiométriques à l'équivalence par une relation entre $n("H"_2"C"_2"O"_4)_"initial"$ et $n("HO"^-)_"éq"$.]
  #Q[Un élève écrit : « $n("H"_2"C"_2"O"_4) = 2 times n("HO"^-)_"éq"$ ». Explique son erreur en t'appuyant sur ton schéma et sur les proportions stœchiométriques.]
  #Q[Explique comment le technicien repère l'équivalence.]
  #Q[Calcule la concentration en quantité de matière $c_d$ de l'acide oxalique dans $S_d$, puis celle de la solution commerciale $c_0$.]
  #Q[Déduis-en la concentration massique $C_m$ en acide oxalique du dégriseur.]

  _Incertitudes_ : on retient les incertitudes-types $u(V_"éq")$ = 0,10 mL sur le volume à l'équivalence et $u(c_B)$ = 0,002 × 10#super[−1] #molL sur la concentration de la soude. Les incertitudes liées aux prélèvements à la pipette et à la dilution sont négligées. L'incertitude-type sur la concentration de la solution titrée s'estime alors par :
  $ u(C_m) / C_m = sqrt( (u(V_"éq") / V_"éq")^2 + (u(c_B) / c_B)^2 ) $

  #Q[Calcule l'incertitude-type $u(C_m)$ et écris le résultat du titrage sous la forme $C_m$ avec son incertitude-type, avec un nombre adapté de chiffres significatifs.]
  #Q[Calcule le z-score $z = display(abs(C_m - C_"réf") / u(C_m))$, où $C_"réf" = 50$ g·L#super[−1] est la valeur indiquée par le fabricant. Le résultat du titrage est-il compatible avec l'étiquette ? (On considère la mesure compatible avec la valeur de référence si $z <= 2$.)]
]

// ═══════════════ CORRECTION PROFESSEUR — à retirer avant impression élève ═══════════════
#pagebreak()
#set text(size: 9.5pt)
#set par(spacing: 0.55em)

= Correction synthétique (professeur)

*I. Vocabulaire* — *1.* Réaction support : réaction titré/titrant, rapide, totale, unique. Titrée : quantité inconnue, dans le bécher (volume prélevé à la pipette jaugée). Titrante : concentration connue, dans la burette. Équivalence : réactifs introduits dans les proportions stœchiométriques, tous deux consommés ; changement de réactif limitant. Proportions stœchiométriques : quantités dans le même rapport que les coefficients, aucun réactif en excès.
*2.* Avant l'équivalence : B (titrant) limitant, « B en excès » = 0. Après : A (titré) limitant, « A restant » = 0 et B s'accumule.

*II. Relation à l'équivalence* — *3.* 2 A + B : $n("A")$ = 16, $n("B")_"éq"$ = 8, $V_"éq"$ = 4,0 mL. A + 2 B : 16 ; 32 ; 16,0 mL. *4.* $n("A")_"i" / 2 = n("B")_"éq"$ et $n("A")_"i" = n("B")_"éq" / 2$.

*III. Simulation fer(II)* — *5.* Fe²⁺ titré (bécher, concentration cherchée) ; MnO₄⁻ titrant (burette). *6.* Avant : MnO₄⁻ limitant, aussitôt consommé, produits quasi incolores. Après : Fe²⁺ épuisé, MnO₄⁻ s'accumule, teinte violette. *7.* $n("Fe"^(2+))_"i" / 5 = n("MnO"_4^-)_"éq"$ : 40 = 5 × 8.

*Application (médicament)*
+ Burette : MnO₄⁻, $c_2$ = 5,00 × 10#super[−3] #molL. Bécher : $V_1$ = 20,0 mL de S, [Fe²⁺] inconnue.
+ 5 Fe²⁺ pour 1 MnO₄⁻ : il y a 5 fois plus de Fe²⁺, donc $n("Fe"^(2+)) = 5 times n("MnO"_4^-)_"éq"$ (l'élève a inversé).
+ $n("MnO"_4^-)_"éq"$ = 5,00 × 10#super[−3] × 11,4 × 10#super[−3] = 5,70 × 10#super[−5] mol ; $n("Fe"^(2+))$ = 2,85 × 10#super[−4] mol.
+ Comprimé (× 100,0/20,0) : 1,43 × 10#super[−3] mol ; $m$ = 1,425 × 10#super[−3] × 55,8 ≈ 79,5 mg : conforme à 80 mg.

*Exercice 1 (ammoniac)*
+ Burette : acide chlorhydrique (H₃O⁺), $c$ = 5,00 × 10#super[−2] #molL, titrant. Bécher : $V_d$ = 10,0 mL de $S_d$ (NH₃, titrée, $c_d$ ?), rouge de méthyle, agitateur magnétique.
+ $"NH"_3 + "H"_3"O"^+ -> "NH"_4^+ + "H"_2"O"$.
+ NH₃ titré (bécher, inconnue) ; H₃O⁺ titrant (burette, connue). Cité en premier ≠ titré.
+ Virage de l'indicateur (jaune → orange).
+ $n("NH"_3)_"i" = n("H"_3"O"^+)_"éq"$ ; $c_d$ = 5,00 × 10#super[−2] × 19,4 / 10,0 = 9,70 × 10#super[−2] #molL.
+ $c_0$ = 10 $c_d$ = 0,970 #molL ≈ 1,0 #molL annoncé (écart ≈ 3 %).

*Exercice 2 (dégriseur)*
+ Étape 1 : pipette jaugée 10,0 mL de $S_0$ ($c_0$ ?) → fiole jaugée 100,0 mL, $S_d$ ($c_d$ ?). Étape 2 : burette, soude $c_B$ = 1,00 × 10#super[−1] #molL (titrant) ; bécher, $V_d$ = 10,0 mL de $S_d$ (titré) + phénolphtaléine ; agitateur.
+ Le titrage donne $c_d$ ; $F$ = 100,0 / 10,0 = 10.
+ 2 HO⁻ par molécule : $n("H"_2"C"_2"O"_4)_"i" = n("HO"^-)_"éq" / 2$.
+ Inversion : il faut 2 fois *plus* de HO⁻ que d'acide, pas l'inverse.
+ Teinte rose persistante : HO⁻ en excès, milieu basique.
+ $n("HO"^-)_"éq"$ = 1,08 × 10#super[−3] mol ; $n("acide")$ = 5,40 × 10#super[−4] mol ; $c_d$ = 5,40 × 10#super[−2] #molL ; $c_0$ = 0,540 #molL.
+ $C_m$ = 0,540 × 90,0 = 48,6 g·L#super[−1].
+ $u(C_m)/C_m$ = √[(0,10 / 10,8)#super[2] + (0,002 / 0,100)#super[2]] ≈ 2,2 % ; $u(C_m)$ ≈ 1,1 g·L#super[−1] ; $C_m$ = 48,6 g·L#super[−1], $u(C_m)$ = 1,1 g·L#super[−1].
+ $z$ = 1,4 / 1,07 ≈ 1,3 ≤ 2 : compatible avec l'étiquette.
