#import "../../_assets/template_evaluation.typ": *

#show: conf

#eval_titre("Barème et éléments de correction - DS 1ère spé : loi de Beer-Lambert (sujet standard)")

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

#bareme("Exercice 1 - L'huile d'olive", "4",
  ([1], [1], [$m = rho V$ ; $V = 1000$ mL → $m = 898$ g]),
  ([2], [0,5], [$M = "282,0"$ g/mol]),
  ([3], [1,5], [$n = m/M = "3,18"$ mol ; $N = n N_A = "1,9" times 10^24$ molécules]),
  ([4], [1], [$m = M / N_A$ (ou $m_"tot" / N$) $= "4,7" times 10^(-22)$ g]),
)

#bareme("Exercice 2 - Dilutions", "3",
  ([1], [0,5], [*Vrai* : 100 mL → 200 mL, $F = 2$]),
  ([2], [0,5], [*Faux* : pipette jaugée (la fiole jaugée sert à préparer la solution fille)]),
  ([3], [1], [*Faux* : $V_"fille" = 10$ L → ajouter 9 L d'eau]),
  ([4], [1], [*Faux* : $V_0 = V_1 / F = "0,25"$ L $= 250$ mL]),
)

#bareme("Exercice 3 - La Bétadine®", "13",
  ([1], [0,5], [$lambda_max approx 470$ nm ; bleu]),
  ([2], [1,5], [Couleur perçue = complémentaire de la couleur absorbée (diamétralement opposée) → jaune-orangé]),
  ([3], [1], [$lambda = lambda_max = 470$ nm ; absorbance maximale → meilleure précision]),
  ([4], [1], [$C_3 = "4,0" times 10^(-4)$ mol/L ; $F = C_0 / C_3 = 50$]),
  ([5], [1,5], [$V_"fiole" = F times V_"pipette"$ → pipette jaugée 5,0 mL + fiole jaugée 250,0 mL]),
  ([6], [1,5], [S#sub[0] dans un bécher ; prélever 5,0 mL (pipette jaugée + propipette) ; fiole 250,0 mL ; eau distillée aux 3/4, agiter ; compléter au trait de jauge ; boucher, homogénéiser]),
  ([7], [1,5], [$A = k C$ ; $A$ sans unité, $C$ en mol/L, $k$ en L/mol ; solution diluée, $lambda$ fixée]),
  ([8], [0,5], [Droite passant par l'origine → $A$ proportionnelle à $C$ → accord]),
  ([9], [1,5], [$k approx "1,4"$ L/mmol ($"1,4" times 10^3$ L/mol) ; $A = "1,4" C$]),
  ([10], [0,5], [$C_d = A_d / k = "0,21"$ mmol/L]),
  ([11], [0,5], [$C_B = 200 C_d = "4,3" times 10^(-2)$ mol/L]),
  ([12], [1,5], [$C_m = 100$ g/L ; $C_"fab" = C_m / M = "4,23" times 10^(-2)$ mol/L ; valeurs très proches → indication du fabricant vérifiée]),
)

#align(right)[*Total : 20 pts*]
