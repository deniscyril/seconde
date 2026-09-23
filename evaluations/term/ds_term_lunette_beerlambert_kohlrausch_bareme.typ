#import "../../_assets/template_evaluation.typ": *

#show: conf

#eval_titre("Barème et éléments de correction - DS Terminale spé (sujet standard)")

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

#bareme("Exercice 1 - Les cratères de la Lune", "7,5",
  ([1], [0,5], [$theta_C approx d / D_"TL" = 93 / ("3,84" times 10^5) = "2,4" times 10^(-4)$ rad]),
  ([2], [0,5], [$theta_C < epsilon$ → Copernic non distingué à l'œil nu (de peu)]),
  ([3], [1], [Objet à l'infini → image à l'infini (œil au repos, sans accommoder) ; $F'_1$ et $F_2$ confondus]),
  ([4], [0,5], [$O_1 O_2 = f'_1 + f'_2 = 725$ mm]),
  ([5], [1,5], [$F'_1 = F_2$ ; rayon par $O_1$ non dévié → $B_1$ dans le plan focal image de $L_1$ ; l'autre rayon passe par $B_1$ ; émergents parallèles à $(O_2 B_1)$ ; $theta'$ repéré]),
  ([6], [1], [$tan theta = (A_1 B_1) / f'_1$ ; $tan theta' = (A_1 B_1) / f'_2$ → $G = f'_1 / f'_2$ ; $700/25 = 28$ et $700/10 = 70$ : conformes]),
  ([7], [1,5], [$theta_K = "8,3" times 10^(-5)$ rad ; il faut $theta' >= 10 epsilon = "3,0" times 10^(-3)$ rad, soit $G >= 36$ ; $times 28$ → $"2,3" times 10^(-3)$ rad : insuffisant ; $times 70$ → $"5,8" times 10^(-3)$ rad → oculaire de 10 mm]),
  ([8], [1], [$alpha_"lim" = ("1,22" times 550 times 10^(-9)) / "0,070" = "9,6" times 10^(-6)$ rad $<< theta_K$ → la diffraction n'empêche pas l'observation]),
)

#bareme("Exercice 2 - La Bétadine®", "6,5",
  ([1], [0,5], [$lambda_max approx 470$ nm ; bleu]),
  ([2], [1], [Couleur perçue = complémentaire de la couleur absorbée (diamétralement opposée) → jaune-orangé]),
  ([3], [0,5], [$C_3 = "4,0" times 10^(-4)$ mol/L ; $F = C_0 / C_3 = 50$]),
  ([4], [0,5], [$V_"fiole" = F times V_"pipette"$ → pipette jaugée 5,0 mL + fiole jaugée 250,0 mL]),
  ([5], [1], [S#sub[0] dans un bécher ; prélever 5,0 mL (pipette jaugée + propipette) ; fiole 250,0 mL ; eau distillée aux 3/4, agiter ; compléter au trait de jauge ; boucher, homogénéiser]),
  ([6], [0,5], [$A = k C$ ; $A$ sans unité, $C$ en mol/L, $k$ en L/mol ; solution diluée, $lambda$ fixée]),
  ([7], [1], [$k approx "1,4"$ L/mmol ($"1,4" times 10^3$ L/mol) ; $A = "1,4" C$]),
  ([8], [0,5], [$C_d = A_d / k = "0,21"$ mmol/L]),
  ([9], [0,5], [$C_B = 200 C_d = "4,3" times 10^(-2)$ mol/L]),
  ([10], [1], [$C_m = 100$ g/L ; $C_"fab" = C_m / M = "4,23" times 10^(-2)$ mol/L ; valeurs très proches → indication du fabricant vérifiée]),
)

#bareme("Exercice 3 - Le sérum physiologique", "6",
  ([1], [1], [$sigma = sum lambda_i [X_i]$ ; $sigma = (lambda("Na"^+) + lambda("Cl"^-)) C$ ; $C$ en $"mol" dot "m"^(-3)$]),
  ([2], [1], [$C = "2,0" times 10^(-3) "mol" dot "L"^(-1) = "2,0" "mol" dot "m"^(-3)$ ; $sigma = "12,64" times 10^(-3) times "2,0" = "2,5" times 10^(-2) "S" dot "m"^(-1)$]),
  ([3], [1,5], [$k approx "12,6" "mS" dot "m"^(-1) \/ ("mmol" dot "L"^(-1)) = "1,26" times 10^(-2) "S" dot "m"^2 dot "mol"^(-1)$ ; $lambda("Na"^+) + lambda("Cl"^-) = "1,264" times 10^(-2) "S" dot "m"^2 dot "mol"^(-1)$ → cohérent]),
  ([4], [0,5], [$C_S approx 154 "mmol" dot "L"^(-1) >> 10 "mmol" dot "L"^(-1)$ : hors du domaine de validité de la loi et de la gamme d'étalonnage]),
  ([5], [1,5], [$sigma_d = "38,5" "mS" dot "m"^(-1)$ ; $C_d = sigma_d / k = "3,05" "mmol" dot "L"^(-1)$ ; $C_S = 50 C_d = "0,152" "mol" dot "L"^(-1)$]),
  ([6], [0,5], [$C_m = C_S M = "0,152" times "58,5" = "8,9" "g" dot "L"^(-1)$]),
)

#align(right)[*Total : 20 pts*]
