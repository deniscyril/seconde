#import "../../_assets/template_physique.typ": *

#show: conf
#chapitre[Corrigé — TP Gamme étalon et incertitudes - 1ère]

#important[Document professeur — ne pas distribuer aux élèves.]

= Volumes à prélever

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$],
  [$C_i$ (mol/L)], [$0,50 times 10^(-4)$], [$1,0 times 10^(-4)$], [$2,0 times 10^(-4)$], [$3,0 times 10^(-4)$], [$4,0 times 10^(-4)$],
  [$V(C_0)$ (mL)], [$5,0$], [$10,0$], [$20,0$], [$30,0$], [$40,0$],
)

= Longueur d'onde

$lambda_"max" approx 525$ nm (maximum net dans le vert ; l'absorbance croît puis décroît de part et d'autre entre 400 et 700 nm).

= Droite d'étalonnage

Valeurs réalistes (bruit de mesure typique lycée) :

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$], [$C_x$],
  [$C$ (mol/L)], [$0,50 times 10^(-4)$], [$1,0 times 10^(-4)$], [$2,0 times 10^(-4)$], [$3,0 times 10^(-4)$], [$4,0 times 10^(-4)$], [$3,5 times 10^(-4)$ *(réelle, prof)*],
  [$A$], [$0,115$], [$0,215$], [$0,445$], [$0,655$], [$0,885$], [$0,775$],
  [$k_i = A\/C$ (L·mol⁻¹)], [$2300$], [$2150$], [$2225$], [$2180$], [$2210$], [—],
)

- $A$ proportionnelle à $C$ : oui — les $k_i$ restent voisins de $2200$ L·mol⁻¹ (écart $< 5%$) et la droite passe par l'origine.
- Pente de régression (origine forcée) : $k approx 2200$ L·mol⁻¹ (= $epsilon dot l$, avec $epsilon("KMnO"_4, 525 "nm") approx 2200$ L·mol⁻¹·cm⁻¹ et $l = 1$ cm — info prof, jamais donnée aux élèves).
- $C_x = A_x \/ k = 0,775 \/ 2200 approx 3,5 times 10^(-4)$ mol/L (solution préparée réellement à $3,5 times 10^(-4)$ mol/L).

= Incertitude sur $C_x$ (type A)

Exemple avec $n = 9$ binômes ($C_x$ en $10^(-4)$ mol/L) : $3,42$ ; $3,55$ ; $3,48$ ; $3,60$ ; $3,51$ ; $3,38$ ; $3,57$ ; $3,46$ ; $3,53$.

$overline(C_x) = 3,50 times 10^(-4)$ mol/L #h(1em) $s = 0,07 times 10^(-4)$ mol/L #h(1em) $u(C_x) = s\/sqrt(9) approx 0,02 times 10^(-4)$ mol/L

*Résultat* : $C_x = (3,50 plus.minus 0,02) times 10^(-4)$ mol/L.

= Synthèse

+ Beer-Lambert vérifiée : $k_i$ quasi constants et droite passant par l'origine (résidus faibles).
+ Une mesure isolée ne donne aucune dispersion : sans série de mesures indépendantes, ni moyenne ni écart-type ne sont calculables.
+ $u(C_x) prop 1\/sqrt(n)$ : doubler $n$ divise $u(C_x)$ par $sqrt(2) approx 1,4$ (ex. $0,02 -> 0,014 times 10^(-4)$ mol/L).
