#import "../../_assets/template_tp_physique.typ": *

#show: conf
#chapitre[Corrigé — TP Bilan de matière d'une transformation chimique - 1ère]

#important[Document professeur — ne pas distribuer aux élèves.]

// Tableau d'avancement complété : lignes = (initial, intermédiaire, final), quantités en mmol.
#let tableau-avancement(titre, initial, intermediaire, final) = align(center, figure(
  table(
    columns: (auto, auto, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    inset: 6pt,
    table.cell(colspan: 2)[*Équation*],
    [$"I"_2$], [$+ quad 2 thin "S"_2"O"_3^(2-)$], [$-> quad 2 thin "I"^-$], [$+ quad "S"_4"O"_6^(2-)$],
    [*État*], [*Avancement (mmol)*],
    [$n("I"_2)$], [$n("S"_2"O"_3^(2-))$], [$n("I"^-)$], [$n("S"_4"O"_6^(2-))$],
    [Initial], [$x = 0$], ..initial,
    [Intermédiaire], [$x$], ..intermediaire,
    [Final], [$x_f$], ..final,
  ),
  caption: titre,
  supplement: none,
))

= Expérience 1

+ *Avant réaction :* bécher ① : 10 mL de solution de diiode, *jaune-orangé* ($"I"_2$) ; bécher ② : 40 mL de solution de thiosulfate de sodium, *incolore* ($"Na"^+$, $"S"_2"O"_3^(2-)$).
+ Le mélange devient *incolore* : le diiode, seule espèce colorée, a disparu. Sa quantité *diminue* au cours de la transformation jusqu'à s'annuler.
+ *État final :* un bécher de 50 mL, *incolore*, contenant $"S"_2"O"_3^(2-)$ restant, $"I"^-$, $"S"_4"O"_6^(2-)$ (et $"Na"^+$).
+ Le mélange final est incolore : il ne reste plus de diiode, il a été entièrement consommé. $"I"_2$ est le *réactif limitant*.

= Bilan de matière

5. $n_0("I"_2) = C_1 times V_1$ #h(1em) A.N. : $n_0("I"_2) = 1","0 times 10^(-2) times 10 = 0","10$ mmol #h(1em) _(mL × mol/L = mmol)_ #linebreak()
  $n_0("S"_2"O"_3^(2-)) = C_2 times V_2$ #h(1em) A.N. : $n_0("S"_2"O"_3^(2-)) = 1","0 times 10^(-2) times 40 = 0","40$ mmol
+ Voir le tableau 1 (lignes « initial » et « intermédiaire »).
+ $"I"_2$ est limitant (question 4), donc $n_f ("I"_2) = 0$ : $0","10 - x_f = 0$, d'où $x_f = 0","10$ mmol.
+ $n_f ("S"_2"O"_3^(2-)) = 0","40 - 2 times 0","10 = 0","20$ mmol ; $n_f ("I"^-) = 2 times 0","10 = 0","20$ mmol ; $n_f ("S"_4"O"_6^(2-)) = 0","10$ mmol.

#tableau-avancement([Tableau 1 — Expérience 1 (mmol)],
  ([$0","10$], [$0","40$], [$0$], [$0$]),
  ([$0","10 - x$], [$0","40 - 2x$], [$2x$], [$x$]),
  ([$0$], [$0","20$], [$0","20$], [$0","10$]),
)

= Expérience 2 : prévoir avant d'observer

9. $n_0("I"_2) = 1","0 times 10^(-2) times 30 = 0","30$ mmol ; $n_0("S"_2"O"_3^(2-)) = 1","0 times 10^(-2) times 40 = 0","40$ mmol (tableau 2).
+ Si $"I"_2$ est limitant : $0","30 - x_f = 0$, soit $x_f = 0","30$ mmol. #linebreak()
  Si $"S"_2"O"_3^(2-)$ est limitant : $0","40 - 2 x_f = 0$, soit $x_f = 0","20$ mmol.
+ Avec $x_f = 0","30$ mmol : $n_f ("S"_2"O"_3^(2-)) = 0","40 - 2 times 0","30 = -0","20$ mmol $< 0$ : *impossible*. #linebreak()
  Donc $x_f = 0","20$ mmol (la plus petite valeur) et $"S"_2"O"_3^(2-)$ est le *réactif limitant*.
+ Ligne « final » : voir tableau 2. Il reste $0","10$ mmol de diiode : le mélange final doit être *jaune* (plus pâle que la solution initiale).

#tableau-avancement([Tableau 2 — Expérience 2 (mmol)],
  ([$0","30$], [$0","40$], [$0$], [$0$]),
  ([$0","30 - x$], [$0","40 - 2x$], [$2x$], [$x$]),
  ([$0","10$], [$0$], [$0","40$], [$0","20$]),
)

13. Le mélange reste jaune : la prévision est vérifiée, du diiode est en excès.

= Vers le mélange stœchiométrique

14. Les deux réactifs sont entièrement consommés : $n_f ("I"_2) = 0$ et $n_f ("S"_2"O"_3^(2-)) = 0$. #linebreak()
  $n_0("I"_2) - x_f = 0$ et $n_0("S"_2"O"_3^(2-)) - 2 x_f = 0$, d'où :
  $ n_0("S"_2"O"_3^(2-)) = 2 n_0("I"_2) quad "soit" quad n_0("I"_2) = (n_0("S"_2"O"_3^(2-))) / 2 $
+ Avec $n = C times V$, la relation de la question 14 devient :
  $ C_1 times V_"E" = (C_2 times V_2) / 2 quad arrow.r quad V_"E" = (C_2 times V_2) / (2 C_1) $
  A.N. : $V_"E" = (1","0 times 10^(-2) times 40) / (2 times 1","0 times 10^(-2)) = 20$ mL
+ Il ne reste ni diiode ni thiosulfate, les produits sont incolores : le mélange est *incolore*. On ne peut pas le distinguer d'un mélange où le thiosulfate est en excès, lui aussi incolore (seul $"I"_2$ est coloré).
+ Volume versé attendu : $V approx 20$ mL, à quelques gouttes près (lecture de la burette, appréciation de la teinte).
+ Tant que $V < V_"E"$, le thiosulfate est en excès : chaque goutte de diiode versée est aussitôt consommée et le mélange reste incolore. À $V_"E"$, tout le thiosulfate a été consommé. Au-delà, le diiode versé ne peut plus réagir : il s'accumule et colore le mélange en jaune. La première teinte jaune *persistante* indique donc que l'on vient de dépasser le mélange stœchiométrique.
