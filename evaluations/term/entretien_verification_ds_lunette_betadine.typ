#import "../../_assets/template_evaluation.typ": *

#show: conf

#let nom_prenom() = {
  grid(
    columns: (1fr, 1fr, 0.6fr),
    gutter: 15pt,
    align: bottom,
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*NOM :*], line(length: 100%, stroke: 0.5pt)),
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*Prénom :*], line(length: 100%, stroke: 0.5pt)),
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*Date :*], line(length: 100%, stroke: 0.5pt)),
  )
  v(0.5cm)
}

// ======================================================================
//  FICHE ÉLÈVE
// ======================================================================

#nom_prenom()


#exercice[
  *Observer un cratère de la Lune*

  *Données :*
  - distance Terre-Lune : $D_"TL" = "3,84" times 10^5$ km ;
  - pouvoir séparateur de l'œil : $epsilon = "3,0" times 10^(-4)$ rad. Deux points vus sous un angle $theta$ sont distingués si $theta > epsilon$ ;
  - pour des angles petits exprimés en radian : $tan theta approx theta$ ;
  - le *diamètre apparent* $theta$ d'un cratère est l'angle sous lequel un observateur terrestre voit ce cratère ; il s'exprime en radian ;
  - lunette : distance focale de l'objectif $f'_1 = 700$ mm ; oculaires disponibles : $f'_2 = 20$ mm et $f'_2 = 6$ mm ;
  - grossissement : $G = theta' / theta$, où $theta'$ est l'angle sous lequel l'objet est vu à travers la lunette. Pour une lunette afocale, $G = f'_1 / f'_2$.

  *1.* Que signifie « la lunette est afocale » ? Comment doivent être placés le foyer image $F'_1$ de l'objectif et le foyer objet $F_2$ de l'oculaire ?

  #block(breakable: false)[
  *2.* Sur le schéma ci-dessous (qui n'est pas à l'échelle) :
  - place les foyers $F'_1$ et $F_2$ ;
  - trace la marche des deux rayons issus de $B_infinity$ à travers la lunette, en faisant apparaître l'image intermédiaire $A_1 B_1$ ;
  - repère l'angle $theta'$.

  #align(center)[#image("../figures/lunette_annexe_lune.png", width: 90%)]
  ]

  Explique ensuite pourquoi l'image intermédiaire $A_1 B_1$ se forme à la distance $f'_1$ de l'objectif.

  #grid(
    columns: (1fr, 0.9fr),
    column-gutter: 10pt,
    align: horizon,
    [
      *3.* On veut observer un cratère de diamètre $d = 20$ km. Calcule son diamètre apparent $theta$. Peut-on le distinguer à l'œil nu ? Justifie.
    ],
    figure(image("../figures/lune_diametre_apparent.png", width: 100%), caption: [Diamètre apparent (non à l'échelle)]),
  )

  *4.* On veut voir ce cratère « confortablement », c'est-à-dire sous un angle $theta'$ au moins dix fois plus grand que le pouvoir séparateur de l'œil. Quel oculaire faut-il utiliser ? Justifie.
]

#pagebreak()
#exercice[
  *Dilution*

  *Données :*
  - solution mère $S_0$ de diiode : $C_0 = "2,00" times 10^(-2) "mol" dot "L"^(-1)$ ;
  - matériel disponible : pipettes jaugées de 5,0 ; 10,0 ; 20,0 et 25,0 mL -- fioles jaugées de 50,0 ; 100,0 et 250,0 mL -- béchers -- pipette Pasteur -- eau distillée.

  *5.* On veut préparer une solution fille de concentration $C = "1,0" times 10^(-3) "mol" dot "L"^(-1)$ à partir de $S_0$. Calcule le facteur de dilution $F$, puis choisis la pipette jaugée et la fiole jaugée à utiliser. Justifie par un calcul.

  *6.* Dans ta copie, tu as écrit $C_0 V_0 = C_3 V_3$. Que représente le produit $C_0 V_0$ ? Pourquoi est-il égal à $C_3 V_3$ ?

  *7.* Décris brièvement les étapes de préparation de la solution fille.
]

// ======================================================================
//  FICHE PROFESSEUR
// ======================================================================

#pagebreak()
#exercice-compteur.update(0)

#eval_titre("Fiche professeur – Attendus et points d'observation")

*Conditions :* feuille blanche, calculatrice, sans la copie. 20 minutes maximum.

*Ouverture (avant les questions) :* « Ta copie est bien meilleure que d'habitude, je voudrais comprendre comment tu as raisonné. Tu peux m'expliquer ? » _Noter s'il décrit sa démarche ou reste vague._

#exercice[
  *Observer un cratère de la Lune*

  *1.* Objet à l'infini → image à l'infini. $F'_1$ et $F_2$ confondus.

  *2.* Schéma : $F'_1$ et $F_2$ confondus entre les lentilles ; rayon passant par $O_1$ non dévié, l'autre parallèle émergeant par $F'_1$ ; $A_1 B_1$ dans le plan focal commun ; rayons émergents parallèles entre eux ; $theta'$ repéré en sortie d'oculaire. L'objet étant à l'infini, son image par l'objectif se forme dans le plan focal image de $L_1$ : $O_1 A_1 = f'_1$.
  _Observer : le tracé est-il fait seul et juste ? (Q5 de l'annexe ; la démonstration de la Q6 de sa copie en dépend.)_

  *3.* $theta = d / D_"TL" = 20 / ("3,84" times 10^5) approx "5,2" times 10^(-5)$ rad. $theta < epsilon = "3,0" times 10^(-4)$ rad : non distinguable à l'œil nu.

  *4.* *Question clé.* $theta' >= 10 epsilon = "3,0" times 10^(-3)$ rad, donc $G_"min" = ("3,0" times 10^(-3)) / ("5,2" times 10^(-5)) approx 58$.
  - oculaire 20 mm : $G = 700 / 20 = 35$, insuffisant ;
  - oculaire 6 mm : $G = 700 / 6 approx 117$, convient → *oculaire de 6 mm*.
  _Observer : pense-t-il seul à calculer $G_"min"$, ou tâtonne-t-il ?_
]

#exercice[
  *Dilution*

  *5.* $F = C_0 / C = ("2,00" times 10^(-2)) / ("1,0" times 10^(-3)) = 20$. Il faut $V_"fiole" = 20 times V_"pipette"$ : seule combinaison possible, *pipette de 5,0 mL et fiole de 100,0 mL*.

  *6.* $C_0 V_0$ est la quantité de matière de diiode prélevée dans la solution mère. Elle est conservée lors de la dilution (on n'ajoute que de l'eau), d'où $C_0 V_0 = C_3 V_3$.

  *7.* Verser $S_0$ dans un bécher ; prélever 5,0 mL avec la pipette jaugée ; les verser dans la fiole jaugée de 100,0 mL ; compléter avec de l'eau distillée jusqu'au trait de jauge (pipette Pasteur pour finir) ; boucher et homogénéiser. _Question non traitée sur la copie (Q5 du DS)._
]

#v(0.3cm)
*Interprétation*
- Questions 4, 5 et 6 réussies sans aide : progrès réel, la copie est cohérente.
- Blocage sur ces trois questions alors que la copie les traitait parfaitement : l'écart parle de lui-même. Demander simplement : « Comment as-tu trouvé ces réponses le jour du devoir ? »
- Si la méthode $C_0 V_0 = C_f V_f$ est maîtrisée, vérifier auprès de son professeur de l'an dernier s'il l'enseignait (élève redoublant).
