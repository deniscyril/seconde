#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Corrigé — Quantités de matière, tableau d'avancement et dilution - Terminale]

= Partie 1 — Quantités de matière

== Exercice 1 — Applications directes

#important[
  *Ne pas confondre les formules.* $n = m/M$ (mole à partir d'une masse), $n = C times V$ (mole en solution), $n = V/V_m$ (mole d'un gaz). Une erreur très fréquente est d'inverser $m$ et $M$ dans la première formule : on retrouve $M$ dans le formulaire ou l'énoncé (c'est une donnée fixe, propre à l'espèce chimique), $m$ est la masse pesée (elle varie selon l'expérience).
]

*1.* $n = m/M = 11,7/58,5 = 0,200$ mol.

*2.* Attention à l'unité du volume : $V = 250$ mL $= 0,250$ L (la formule $n = C times V$ exige un volume en litres). $n = C times V = 0,20 times 0,250 = 0,050$ mol.

#important[
  *Piège classique :* oublier de convertir un volume donné en mL avant de l'utiliser dans $n = C times V$ ou $n = V/V_m$. Un réflexe à prendre : dès qu'un volume apparaît dans l'énoncé, le convertir en litres *avant* tout calcul, même si cela semble une étape « inutile ».
]

*3.* Ici $V = 2,4$ L est déjà en litres, comme $V_m = 24$ $"L" dot.op "mol"^(-1)$ : $n = V/V_m = 2,4/24 = 0,10$ mol.

*4.* $N = n times N_A = 0,50 times 6,02 times 10^23 = 3,01 times 10^23$ entités.

#important[
  *Ne pas confondre $n$ et $N$ :* $n$ est une quantité de matière, en *mol* ; $N$ est un *nombre d'entités* (molécules, atomes, ions…), *sans unité*. On passe de l'un à l'autre avec $N_A$, mais ce ne sont pas la même grandeur.
]

== Exercice 2 — Sérum physiologique

*Méthode :* on cherche d'abord la masse de $"NaCl"$ dissoute grâce à la concentration massique $c_m$, puis on en déduit la quantité de matière.

*1.* Le volume de la poche doit être converti en litres avant tout calcul : $V = 500$ mL $= 0,500$ L. Masse de chlorure de sodium dissoute : $m = c_m times V = 9,0 times 0,500 = 4,5$ g.

#important[
  *Donnée piège :* la masse du patient (68 kg) *n'intervient dans aucun calcul* de cet exercice — c'est une information de contexte, pas une donnée physique-chimique utile. Un élève en difficulté a souvent le réflexe de vouloir « utiliser toutes les données » de l'énoncé : ce n'est pas toujours le cas, il faut d'abord identifier ce qui sert réellement au calcul demandé.
]

*2.* Quantité de matière de chlorure de sodium apportée : $n = m/M = 4,5/58,5 = 7,7 times 10^(-2)$ mol. Concentration molaire : $C = n/V = (7,7 times 10^(-2))/0,500 = 0,15$ $"mol" dot.op "L"^(-1)$.

*3.* Le chlorure de sodium se dissout selon $"NaCl"("s") -> "Na"^+ ("aq") + "Cl"^- ("aq")$ : un ion $"Na"^+$ est libéré pour chaque unité de $"NaCl"$ dissoute, donc $n("Na"^+) = n("NaCl") = 7,7 times 10^(-2)$ mol.

#important[
  *Piège :* ne pas multiplier ou diviser par un facteur ici — les coefficients stœchiométriques de l'équation de dissolution sont tous égaux à 1, donc $n("Na"^+) = n("NaCl")$ directement. On ne fait ce genre de proportionnalité (avec un facteur différent de 1) que lorsque les coefficients de l'équation sont différents, comme dans les exercices suivants.
]

== Exercice 3 — Acidité d'un vinaigre

*Rappel (masses molaires à connaître par cœur) :* $M(C) = 12,0$ ; $M(H) = 1,00$ ; $M(O) = 16,0$ $"g" dot.op "mol"^(-1)$.

*1.* La molécule $"CH"_3"COOH"$ contient 2 atomes de C, 4 atomes de H et 2 atomes de O : $M("CH"_3"COOH") = 2 times 12,0 + 4 times 1,00 + 2 times 16,0 = 60,0$ $"g" dot.op "mol"^(-1)$.

*2.* $m_"vinaigre" = rho times V = 1,01 times 750 = 757,5$ g.

#important[
  *Donnée piège :* le prix de la bouteille (2,50 €) ne sert à rien dans les calculs — encore une donnée de contexte à écarter.
]

*3.* L'acidité « 6° » signifie 6,0 g d'acide acétique *pour 100 g de vinaigre* (et non pour 100 mL). Il faut donc d'abord être passé par la masse totale de vinaigre (question 2) avant d'appliquer ce pourcentage : $m_"acide" = m_"vinaigre" times 6,0/100 = 757,5 times 6,0/100 = 45,5$ g.

#important[
  *Piège fréquent :* appliquer directement « 6 % » au volume (750 mL) sans passer par la masse. Le pourcentage donné est un pourcentage *massique* (g pour 100 g), il ne s'applique donc qu'à une masse, jamais directement à un volume. C'est pour cela que la question 2 (calcul de la masse de vinaigre) est indispensable avant la question 3.
]

*4.* $n = m/M = 45,5/60,0 = 0,76$ mol.

*5.* $C = n/V = 0,76/0,750 = 1,0$ $"mol" dot.op "L"^(-1)$ (avec $V = 750$ mL $= 0,750$ L).

#pagebreak()

= Partie 2 — Tableau d'avancement

== Exercice 4 — Combustion du méthane

*Méthode pour construire un tableau d'avancement :* on écrit l'équation avec ses coefficients stœchiométriques en tête de colonnes, une ligne pour l'état initial ($x = 0$), une ligne « en cours » où chaque quantité de matière varie de $plus.minus n times x$ ($n$ étant le coefficient stœchiométrique de l'espèce, avec un signe $-$ si l'espèce est consommée et $+$ si elle est produite), et une ligne « état final » où $x = x_"max"$.

*1.* Tableau d'avancement (en mol) :

#table(
  columns: 5,
  [], [$"CH"_4$], [$2 "O"_2$], [$"CO"_2$], [$2 "H"_2"O"$],
  [État initial ($x=0$)], [$0,20$], [$0,50$], [$0$], [$0$],
  [En cours ($x$)], [$0,20 - x$], [$0,50 - 2x$], [$x$], [$2x$],
  [État final ($x_"max"$)], [$0,20 - x_"max"$], [$0,50 - 2 x_"max"$], [$x_"max"$], [$2 x_"max"$],
)

*2.* Le réactif limitant est celui qui s'épuise en premier, c'est-à-dire celui qui donne la plus *petite* valeur de $x_"max"$ en annulant sa propre ligne. Si $"CH"_4$ était limitant (sa ligne s'annule) : $0,20 - x_"max" = 0 arrow.r x_"max" = 0,20/1 = 0,20$ mol. Si $"O"_2$ était limitant : $0,50 - 2 x_"max" = 0 arrow.r x_"max" = 0,50/2 = 0,25$ mol. Le plus petit des deux impose la limite réelle : $x_"max" = 0,20$ mol, le réactif limitant est le méthane $"CH"_4$.

#important[
  *Piège très fréquent :* pour trouver quel réactif est limitant, il faut diviser la quantité de matière initiale de chaque réactif par *son coefficient stœchiométrique* (ici diviser $n("O"_2)$ par 2, pas comparer directement $0,20$ et $0,50$ « à l'œil »). Comparer les quantités de matière brutes sans tenir compte des coefficients est l'erreur la plus courante sur ce type d'exercice, et elle conduit très souvent à désigner le mauvais réactif limitant.
]

*3.* On remplace $x_"max" = 0,20$ mol dans la ligne « état final » : $n("CH"_4) = 0,20 - 0,20 = 0$ mol ; $n("O"_2) = 0,50 - 2 times 0,20 = 0,10$ mol (en excès) ; $n("CO"_2) = 0,20$ mol ; $n("H"_2"O") = 2 times 0,20 = 0,40$ mol.

#important[
  *Vérification utile :* le réactif limitant a toujours une quantité de matière finale nulle (ici $"CH"_4$). Si ce n'est pas le cas dans votre résultat, c'est le signe d'une erreur à corriger avant de continuer.
]

== Exercice 5 — Détartrage d'une bouilloire

*1.* $n("CaCO"_3) = m/M = 5,0/100 = 0,050$ mol.

*2.* $V = 250$ mL $= 0,250$ L. $n("H"_3"O"^+) = ["H"_3"O"^+] times V = 0,83 times 0,250 = 0,21$ mol.

*3.* Tableau d'avancement (en mol) :

#table(
  columns: 5,
  [], [$"CaCO"_3$], [$2 "H"_3"O"^+$], [$"Ca"^(2+)$], [$"CO"_2$],
  [État initial], [$0,050$], [$0,21$], [$0$], [$0$],
  [En cours], [$0,050 - x$], [$0,21 - 2x$], [$x$], [$x$],
  [État final], [$0,050 - x_"max"$], [$0,21 - 2 x_"max"$], [$x_"max"$], [$x_"max"$],
)

Si $"CaCO"_3$ limitant : $x_"max" = 0,050/1 = 0,050$ mol. Si $"H"_3"O"^+$ limitant (coefficient 2, donc on divise par 2) : $x_"max" = 0,21/2 = 0,105$ mol. Le plus petit des deux est $0,050$ mol : le réactif limitant est le carbonate de calcium $"CaCO"_3$.

*4.* Le tartre ($"CaCO"_3$) est le réactif limitant : sa quantité de matière à l'état final est nulle ($0,050 - 0,050 = 0$). Le tartre disparaît donc totalement, l'acide restant en excès.

#important[
  *Donnée piège :* la durée de l'opération (30 min) n'intervient dans aucun calcul ici — c'est une information de contexte, pas une donnée nécessaire au calcul demandé.
]

== Exercice 6 — Dosage des ions chlorure par précipitation

*1.* Facteur de dilution : $F = V_"fille"/V_"mère" = 200/20,0 = 10$. Concentration diluée : $c = c_"mère"/F = 0,50/10 = 0,050$ $"mol" dot.op "L"^(-1)$.

#important[
  *Donnée piège :* la température (20 °C) ne sert à rien dans ce calcul.

  *Piège sur le facteur de dilution :* $F$ se calcule toujours avec le volume de la solution *diluée* (fille) au numérateur et le volume *prélevé* de la solution *mère* au dénominateur : $F = V_"fille"/V_"mère"$. Un $F$ obtenu inférieur à 1 est impossible (on dilue, on ne concentre pas) : si vous trouvez $F < 1$, c'est que la formule a été inversée.
]

*2.* $n("Ag"^+) = c times V_"fille" = 0,050 times 0,200 = 1,0 times 10^(-2)$ mol.

*3.* Tableau d'avancement (en mol) :

#table(
  columns: 4,
  [], [$"Ag"^+$], [$"Cl"^-$], [$"AgCl"$],
  [État initial], [$1,0 times 10^(-2)$], [$8,0 times 10^(-3)$], [$0$],
  [En cours], [$1,0 times 10^(-2) - x$], [$8,0 times 10^(-3) - x$], [$x$],
  [État final], [$1,0 times 10^(-2) - x_"max"$], [$8,0 times 10^(-3) - x_"max"$], [$x_"max"$],
)

*4.* Les deux réactifs ont un coefficient de 1 : $x_"max"("Ag"^+) = 1,0 times 10^(-2)$ mol ; $x_"max"("Cl"^-) = 8,0 times 10^(-3)$ mol. Le plus petit désigne le réactif limitant : $"Cl"^-$, avec $x_"max" = 8,0 times 10^(-3)$ mol. Masse de précipité formé : $m = x_"max" times M("AgCl") = 8,0 times 10^(-3) times 143,5 = 1,1$ g.

#important[
  *Piège d'écriture des puissances de 10 :* $8,0 times 10^(-3)$ mol *est plus petit* que $1,0 times 10^(-2)$ mol (car $10^(-2) = 10 times 10^(-3)$, donc $1,0 times 10^(-2) = 10 times 10^(-3)$, largement au-dessus de $8,0 times 10^(-3)$). En cas de doute, réécrire toutes les quantités avec la même puissance de 10 avant de comparer.
]

#pagebreak()

= Partie 3 — Dilution

*Rappel de méthode :* une dilution conserve la quantité de matière de soluté prélevée : $C_"mère" times V_"prélevé" = C_"fille" times V_"fille"$. Le facteur de dilution $F$ (toujours $>1$) relie les volumes ($F = V_"fille"/V_"prélevé"$) et, de façon équivalente, les concentrations ($F = C_"mère"/C_"fille"$).

== Exercice 7 — Préparation d'une solution diluée

*1.* $F = C_"mère"/C = 0,50/0,020 = 25$.

*2.* $V_"mère" = V/F = 100/25 = 4,0$ mL.

#important[
  *Piège :* $V_"mère"$ (le petit volume à prélever à la pipette) est *toujours inférieur* au volume final $V$, puisqu'on dilue. Si le calcul donne un volume à prélever supérieur au volume final, c'est le signe d'une erreur (formule inversée, par exemple $V times F$ au lieu de $V/F$).
]

*3.* Une pipette jaugée (avec propipette) de 4,0 mL (ou une pipette graduée adaptée) pour le prélèvement, et une fiole jaugée de 100 mL pour compléter jusqu'au trait de jauge avec de l'eau distillée.

== Exercice 8 — Dilutions successives d'une eau usée

*1.* $F = V_"fiole"/V_"prélevé" = 100/5,00 = 20$.

*2.* $c_1 = c_0/F = 0,120/20 = 6,0 times 10^(-3)$ $"mol" dot.op "L"^(-1)$.

*3.* La seconde dilution utilise le même facteur $F = 20$, mais appliqué à la concentration $c_1$ obtenue après la première dilution (pas à $c_0$) : $c_2 = c_1/F = (6,0 times 10^(-3))/20 = 3,0 times 10^(-4)$ $"mol" dot.op "L"^(-1)$.

#important[
  *Piège :* pour deux dilutions successives de même facteur $F$, le facteur global n'est pas $F$ mais $F times F = F^2$ ($c_2 = c_0/F^2$). Ici $F^2 = 400$, et on vérifie bien $c_2 = 0,120 / 400 = 3,0 times 10^(-4)$ $"mol" dot.op "L"^(-1)$, cohérent avec le calcul en deux étapes.
]

*4.* $c_2 = 3,0 times 10^(-4)$ $"mol" dot.op "L"^(-1)$ est bien inférieure à $2,0 times 10^(-3)$ $"mol" dot.op "L"^(-1)$ : la solution finale est compatible avec les exigences du spectrophotomètre.

*5.* Seule la *première* dilution prélève de l'eau usée initiale (5,00 mL). La seconde dilution prélève 5,00 mL de la solution *déjà diluée* (issue de la première fiole), et non de l'eau usée d'origine. Le volume total d'eau usée initiale utilisé est donc uniquement $V = 5,00$ mL, et non $10,0$ mL.

#important[
  *Piège le plus fréquent de cet exercice :* additionner spontanément les deux volumes prélevés ($5,00 + 5,00 = 10,0$ mL) en pensant qu'ils proviennent tous les deux de l'eau usée initiale. Ce n'est vrai que pour la première étape ; à la seconde étape, on prélève dans la solution *fille* de l'étape précédente, qui n'est plus l'eau usée d'origine.
]
