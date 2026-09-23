#import "../../_assets/template_evaluation.typ": *

#show: conf

#eval_titre("Barème et éléments de correction - DS 1ère spé : loi de Beer-Lambert (sujet PAP)")

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

#bareme("Exercice 1 - L'huile d'olive", "5",
  ([1], [1], [$m = rho V$ ; $V = 1000$ mL → $m = 898$ g]),
  ([2], [1], [$M = "282,0"$ g/mol]),
  ([3], [2], [$n = m/M = "3,18"$ mol ; $N = n N_A = "1,9" times 10^24$ molécules]),
  ([4], [1], [$m = M / N_A$ (ou $m_"tot" / N$) $= "4,7" times 10^(-22)$ g]),
)

#bareme("Exercice 2 - Dilutions", "4",
  ([1], [1], [*Vrai* : 100 mL → 200 mL, $F = 2$]),
  ([2], [1], [*Faux* : pipette jaugée (la fiole jaugée sert à préparer la solution fille)]),
  ([3], [1], [*Faux* : $V_"fille" = 10$ L → ajouter 9 L d'eau]),
  ([4], [1], [*Faux* : $V_0 = V_1 / F = "0,25"$ L $= 250$ mL]),
)

#bareme("Exercice 3 - Le Dakin®", "11",
  ([1], [1], [$M("KMnO"_4) = "158,0"$ g/mol]),
  ([2], [2], [$n = C_0 V_0 = "1,00" times 10^(-4)$ mol ; $m = n M = "15,8"$ mg]),
  ([3], [2], [$F = 10$ ; $V = "5,0"$ mL ; pipette jaugée 5,0 mL + fiole jaugée 50,0 mL]),
  ([4], [2], [$lambda_max approx 525$ nm → vert absorbé ; couleur perçue = complémentaire (opposée sur le cercle) → rouge-rose (magenta)]),
  ([5], [2], [$A_1 = k C_1$ et $A_D = k C_D$ (même $k$) → rapport ; $C_D = "6,3" times 10^(-5)$ mol/L]),
  ([6], [2], [$C_m = C_D M = "9,9"$ mg/L ; flacon : 10 mg/L → accord]),
)

#align(right)[*Total : 20 pts*]
