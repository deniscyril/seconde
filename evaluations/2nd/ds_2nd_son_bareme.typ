#import "../../_assets/template_evaluation.typ": *

#show: conf

#eval_titre("Barème et éléments de correction - DS Seconde : le son (sujet standard)")

#let bareme(titre, total, ..lignes) = {
  block(breakable: false, below: 1em)[
    #text(weight: "bold", fill: c-primary)[#titre #h(1fr) #total pts]
    #v(-0.4em)
    #table(
      columns: (1.3cm, 1.3cm, 1fr),
      align: (center + horizon, center + horizon, left + horizon),
      inset: 5pt,
      stroke: 0.5pt + gray,
      fill: (x, y) => if y == 0 { luma(235) },
      table.header([*Q*], [*Pts*], [*Éléments de réponse*]),
      ..lignes.pos().flatten(),
    )
  ]
}

#bareme("Exercice 1 - Les animaux et le son", "6,5",
  ([1], [2,5], [1 - C ; 2 - A ; 3 - E ; 4 - D ; 5 - B (F = timbre, sans terme associé) — 0,5 par bonne association]),
  ([2], [1], [Domaine de l'audible : de 20 Hz à 20 000 Hz ; audibles : voix (150 Hz) et merle (2 000 Hz) ; éléphant (15 Hz < 20 Hz, infrason) et chauve-souris (50 000 Hz > 20 000 Hz, ultrason) inaudibles]),
  ([3], [0,5], [$2 000 "Hz" > 150 "Hz"$ : fréquence plus grande → son plus aigu]),
  ([4], [1,5], [$50 "kHz" = "5,0" times 10^4 "Hz"$ ; $67 "ms" = "6,7" times 10^(-2) "s"$ ; $20 "µs" = "2,0" times 10^(-5) "s"$ — 0,5 par conversion]),
  ([5], [1], [$(10^(-2))^3 = 10^(-6)$ ; $10^5 times 10^(-6) = 10^(-1)$ ; $10^(-1) / 10^(-4) = 10^(-1-(-4)) = 10^3$ ; règles énoncées ou visibles]),
)

#bareme("Exercice 2 - Accorder sa guitare", "4,5",
  ([1], [0,5], [Périodique : oui ; sinusoïdal : non]),
  ([2], [1,5], [$T$ repérée sur la figure entre deux points identiques (ex. maxima à 1,0 ms et 4,2 ms) ; $T = "3,2" "ms"$ (accepter 3,1 à 3,3 ms ; valoriser une mesure sur plusieurs périodes : $3T = "9,6" "ms"$)]),
  ([3], [1], [$T = "3,2" times 10^(-3) "s"$ ; $f = 1 / T = 1 / ("3,2" times 10^(-3)) approx "3,1" times 10^2 "Hz"$ (312 Hz)]),
  ([4], [1], [$312 "Hz"$ n'est pas compris entre 328 et 331 Hz → corde non accordée]),
  ([5], [0,5], [$f < f_"Mi"$ → fréquence trop petite : son trop grave]),
)

#bareme("Exercice 3 - Orage en randonnée", "4",
  ([1], [1,5], [$Delta t = "5,0" times 10^(-3) "s"$ ; $v = d / (Delta t) = "1,70" / ("5,0" times 10^(-3)) = "3,4" times 10^2 "m" dot "s"^(-1)$]),
  ([2], [1,5], [Éclair perçu immédiatement → $Delta t'$ = durée de propagation du son ; $D = v times Delta t' = 340 times "4,5" approx "1,5" times 10^3 "m"$ (1,5 km)]),
  ([3], [1], [$D_max = 340 times 30 approx "1,0" times 10^4 "m"$ (10 km) ; $"4,5" "s" < 30 "s"$ (1,5 km < 10 km) → Léo doit s'abriter]),
)

#bareme("Exercice 4 - Protéger son audition", "5",
  ([1], [1], [Fatigue auditive à partir de 80 dB ; lésions possiblement irréversibles au-delà de 100 dB]),
  ([2], [1,5], [$89 = 80 + 3 times 3$ → durée divisée 3 fois par 2 : $8 "h" / 8 = 1 "h"$ ; 1 h 30 > 1 h → risque pour son audition]),
  ([3], [1], [Le niveau sonore n'est pas proportionnel à l'intensité ; intensité doublée → niveau + 3 dB : $95 + 3 = 98 "dB"$]),
  ([4], [1], [$98 = 80 + 6 times 3$ → $8 "h" / 2^6 = "7,5" "min"$ ; 2 h ≫ 7,5 min → risque important de lésions]),
  ([5], [0,5], [Deux gestes parmi : bouchons d'oreille, s'éloigner des enceintes, faire des pauses, baisser le volume des écouteurs, limiter la durée d'écoute]),
)

#align(right)[*Total : 20 pts*]
