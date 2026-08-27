#import "../../_assets/template_physique.typ": *

#show: conf

// ───────── aides locales (non fournies par le template) ─────────
#let blanc(w: 2.2cm) = box(width: w, height: 1em, stroke: (bottom: 0.6pt + gray))

// Case à cocher dessinée (vecteur, pas un glyphe de police → toujours affichée)
#let cbox = box(width: 0.75em, height: 0.75em, stroke: 0.55pt + black, baseline: 0.08em)

#let qcm-opt(letter, content) = [#cbox #h(3pt) #letter) #content]

// Tableau d'exercices à remplir : rows = ((n, question, réponse), ...)
#let extable(rows) = text(size: 9.6pt)[#table(
  columns: (1.4em, 1fr, auto),
  stroke: 0.5pt + rgb("#bfbfbf"),
  inset: (x: 5pt, y: 3.5pt),
  align: (center + horizon, left + horizon, center + horizon),
  table.header(
    table.cell(colspan: 2)[*Question*], [*Réponse*]
  ),
  ..rows.map(r => (text(weight: "bold")[#r.at(0)], r.at(1), r.at(2))).flatten()
)]

// Place deux tableaux d'exercices côte à côte (colonne gauche, colonne droite)
#let side-by-side(a, b) = grid(columns: (1fr, 1fr), column-gutter: 10pt, a, b)

// Case de calcul « display » : équation centrée en plus grand (fractions avec trait visible) + réponse
#let calcbox(n, eq) = block(
  stroke: 0.5pt + rgb("#bfbfbf"),
  fill: rgb("#fafafa"),
  inset: (x: 8pt, top: 6pt, bottom: 8pt),
  radius: 2pt,
  width: 100%,
  breakable: false,
)[
  #grid(
    columns: (1.4em, 1fr),
    column-gutter: 4pt,
    align: (left + top, center + horizon),
    text(weight: "bold")[#n.],
    align(center)[#text(size: 11.5pt)[#eq]]
  )
  #v(3pt)
  #align(center)[#text(size: 9pt)[Résultat (bon nb de CS) :] #blanc(w: 3cm)]
]

// Grille de 3 cases de calcul par ligne
#let calcgrid(..boxes) = grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt, row-gutter: 8pt, ..boxes)

// Renvoi vers la page d'exercices dédiée (le contenu de l'exercice y est déporté)
#let exlabel(n) = block(
  fill: rgb("#f0f0ff"), stroke: 0.6pt + rgb("#c4b5fd"), inset: (x: 8pt, y: 5pt), radius: 2pt, width: 100%,
  above: 6pt, below: 10pt,
)[#text(weight: "bold", size: 9.5pt, fill: rgb("#5448c8"))[→ Exercice #n] #text(size: 8.5pt, fill: rgb("#555"))[— voir page « Exercices »]]

// ───────── en-tête de la fiche ─────────
#block(
  width: 100%, fill: c-primary, radius: 4pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(columns: (1fr, auto),
    text(fill: white, weight: "bold", size: 15pt)[
      Puissances de 10 — Unités — Chiffres significatifs
    ],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Seconde],
  )
]
#v(0.5em)

= Puissances de 10

== Écritures des puissances de 10

#définition[
  Pour $n gt.eq 1$ : $10^n$ = 10 × 10 × ... × 10 ($n$ fois) : un 1 suivi de $n$ zéros. Cas particulier : $10^0 = 1$. #linebreak()
  Pour $n gt.eq 1$ : $10^(-n) = 1/10^n$ = 0,00…01 (avec $n$ zéros en comptant celui devant la virgule).
]

#exemple[
  $10^3 = 10 times 10 times 10 = 1 space 000$ #h(0.6cm) $10^5 = 100 space 000$ #linebreak()
  $10^(-1) = 1/10 = 0,1$ #h(0.6cm) $10^(-2) = 1/100 = 0,01$
]

#définition[
  *Lien avec l'écriture décimale.* Multiplier par $10^n$ ($n>0$) → on déplace la virgule de $n$ rangs vers la *droite*. #linebreak()
  Multiplier par $10^(-n)$ ($n>0$) → on déplace la virgule de $n$ rangs vers la *gauche*.
]

#exemple[
  3,5 × $10^2$ = 350 (virgule déplacée de 2 rangs vers la droite) #linebreak()
  8 × $10^(-3)$ = 0,008 (virgule déplacée de 3 rangs vers la gauche)
]

#exlabel(1)

== Écriture scientifique

#définition[
  Un nombre est en *écriture scientifique* s'il s'écrit $a times 10^n$, où : $a$ a un seul chiffre non nul avant la virgule (1 ⩽ $a$ < 10) et $n$ est un entier relatif.
]

#exemple[
  #text(weight: "bold", fill: rgb("#166534"))[✓ Écriture scientifique :] 3,5 × $10^8$ ; 7,2 × $10^(-5)$ #linebreak()
  #text(weight: "bold", fill: rgb("#991b1b"))[✗ Pas en écriture scientifique :] 35 × $10^7$ (il faut 3,5 × $10^8$)
]

#définition[
  *Méthode.* 1. Déplacer la virgule pour avoir un seul chiffre non nul avant la virgule. #linebreak()
  2. Compter le nombre de rangs déplacés → c'est $n$ (sans le signe). #linebreak()
  3. Virgule déplacée vers la *gauche* → exposant *positif*. #linebreak()
  4. Virgule déplacée vers la *droite* → exposant *négatif*.
]

#exemple[
  28 000 = 2,8 × $10^4$ (virgule déplacée de 4 rangs vers la gauche → +4)
]

#exlabel(2)

== Opérations avec les puissances de 10

#définition[
  $10^a times 10^b = 10^(a+b)$ — on *additionne* les exposants. #h(1fr) $10^a/10^b = 10^(a-b)$ — on *soustrait* les exposants.
]
#exemple[
  $10^3 times 10^2 = 10^(3+2) = 10^5$ #h(0.6cm) $10^7/10^3 = 10^(7-3) = 10^4$
]

#définition[
  $1/10^a = 10^(-a)$ — on *change le signe* de l'exposant. #h(1fr) $(10^a)^b = 10^(a times b)$ — on *multiplie* les exposants.
]
#exemple[
  $1/10^3 = 10^(-3)$ #h(0.6cm) $(10^2)^3 = 10^(2 times 3) = 10^6$
]

#important[
  *Récapitulatif des règles.* Multiplication : $10^a times 10^b = 10^(a+b)$ #h(1fr) Division : $10^a/10^b = 10^(a-b)$ #linebreak()
  Inverse : $1/10^a = 10^(-a)$ #h(1fr) Puissance : $(10^a)^b = 10^(a b)$
]

#exlabel(3)

= Convertir les unités avec les préfixes

#définition[
  La méthode est toujours la même, quelle que soit la grandeur physique (longueur, masse, durée, tension, intensité, fréquence…) : un préfixe est un facteur multiplicatif exprimé en puissance de 10.
]

#align(center)[
  #table(
    columns: 4,
    stroke: 0.5pt + gray,
    inset: 6pt,
    align: center + horizon,
    table.header([*Symbole*], [*Nom*], [*Puissance de 10*], [*Valeur décimale*]),
    [G], [giga], [$10^9$], [1 000 000 000],
    [M], [méga], [$10^6$], [1 000 000],
    [k], [kilo], [$10^3$], [1 000],
    [—], [(base)], [$10^0 = 1$], [1],
    [d], [déci], [$10^(-1)$], [0,1],
    [c], [centi], [$10^(-2)$], [0,01],
    [m], [milli], [$10^(-3)$], [0,001],
    [µ], [micro], [$10^(-6)$], [0,000 001],
    [n], [nano], [$10^(-9)$], [0,000 000 001],
  )
]

#v(6pt)

#définition[
  *Convertir vers l'unité de base.* On remplace le préfixe de l'unité source par sa valeur numérique (puissance de 10 correspondante), puis on multiplie.
]

#exemple[
  *Exemple 1 — Longueur.* Convertir 3 cm en m. #linebreak()
  1. Préfixe : *c* (centi) = $10^(-2)$ #linebreak()
  2. 3 cm = 3 × $10^(-2)$ m
]

#exemple[
  *Exemple 2 — Intensité (autre grandeur, même méthode).* Convertir 470 µA en A. #linebreak()
  1. Préfixe : *µ* (micro) = $10^(-6)$ #linebreak()
  2. 470 µA = 470 × $10^(-6)$ A = *4,70 × $10^(-4)$ A*
]

#important[
  *À retenir.* On ne convertit ici que *vers l'unité de base* (m, s, A, V, J, Hz, g…). Pour passer d'un préfixe à un autre, on repassera toujours par l'unité de base comme étape intermédiaire.
]

#exlabel(4)

#pagebreak()

#align(center)[* Exercices — Puissances de 10 et conversions*]

#exercice[
  *Écritures des puissances de 10*

  #side-by-side(
    extable((
      (1, [Écris en écriture décimale : $10^4$], [#blanc()]),
      (2, [Écris en écriture décimale : $10^(-3)$], [#blanc()]),
      (3, [Complète : 10 000 = $10^upright(?)$], [#blanc(w: 1.3cm)]),
    )),
    extable((
      (4, [Écris en écriture décimale : 6 × $10^2$], [#blanc()]),
      (5, [Écris en écriture décimale : 4 × $10^(-2)$], [#blanc()]),
      (6, [Combien vaut $10^0$ ?], [#qcm-opt("a", "10") #h(0.2cm) #qcm-opt("b", "0") #linebreak() #qcm-opt("c", "1") #h(0.2cm) #qcm-opt("d", "100")]),
    )),
  )
]

#exercice[
  *Écriture scientifique*

  #side-by-side(
    extable((
      (1, [Écris 4 500 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
      (2, [Écris 0,0037 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
      (3, [Écris 720 000 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    )),
    extable((
      (4, [Écris en écriture décimale : 6,2 × $10^3$], [#blanc()]),
      (5, [Écris en écriture décimale : 9,1 × $10^(-3)$], [#blanc()]),
      (6, [Laquelle de ces écritures est scientifique ?], [#qcm-opt("a", [45×$10^3$]) #linebreak() #qcm-opt("b", [4,5×$10^4$]) #linebreak() #qcm-opt("c", [0,45×$10^5$]) #linebreak() #qcm-opt("d", [450×$10^2$])]),
    )),
  )
]

#exercice[
  *Opérations avec les puissances de 10*

  #side-by-side(
    extable((
      (1, [Calcule : $10^2 times 10^3 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
      (2, [Calcule : $10^5/10^2 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
      (3, [Calcule : $1/10^4 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    )),
    extable((
      (4, [Calcule : $(10^2)^3 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
      (5, [Calcule : $10^3 times 10^(-5) = 10^upright(?)$], [#blanc(w: 1.3cm)]),
      (6, [Que vaut $10^7/10^3$ ?], [#qcm-opt("a", [$10^10$]) #linebreak() #qcm-opt("b", [$10^2$]) #linebreak() #qcm-opt("c", [4]) #linebreak() #qcm-opt("d", [$10^4$])]),
    )),
  )
]

#exercice[
  *Convertir vers l'unité de base*

  #side-by-side(
    extable((
      (1, [Convertir 25 mm en m], [#blanc(w: 2.4cm)]),
      (2, [Convertir 470 mA en A], [#blanc(w: 2.4cm)]),
      (3, [Convertir 2,5 kJ en J], [#blanc(w: 2.4cm)]),
      (4, [Convertir 8 µs en s], [#blanc(w: 2.4cm)]),
      (5, [Convertir 0,5 GHz en Hz], [#blanc(w: 2.4cm)]),
    )),
    extable((
      (6, [Convertir 45 nm en m], [#blanc(w: 2.4cm)]),
      (7, [Convertir 2,5 kV en V], [#blanc(w: 2.4cm)]),
      (8, [Convertir 750 µg en g], [#blanc(w: 2.4cm)]),
      (9, [Convertir 1,5 MW en W], [#blanc(w: 2.4cm)]),
      (10, [Convertir 0,8 ms en s], [#blanc(w: 2.4cm)]),
    )),
  )
]

#pagebreak()

= Chiffres significatifs et présentation d'un résultat

== Compter les chiffres significatifs d'une mesure

#définition[
  Les *chiffres significatifs* (CS) d'une mesure sont les chiffres qui portent une information fiable sur sa valeur (lus sur l'instrument ou donnés dans l'énoncé). Plus il y a de CS, plus la mesure est précise.
]

#définition[
  *Règles de comptage.* Tous les chiffres non nuls sont significatifs. #linebreak()
  • Un zéro *encadré* par des chiffres non nuls est significatif (205 → 3 CS). #linebreak()
  • Un zéro *à gauche* (avant le premier chiffre non nul) n'est *jamais* significatif (0,0025 → 2 CS). #linebreak()
  • Un zéro *à droite après la virgule* est significatif (2,50 → 3 CS). #linebreak()
  • En écriture scientifique $a times 10^n$, le nombre de CS = nombre de chiffres de $a$ (2,50 × $10^3$ → 3 CS).
]

#exemple[
  205 → 3 CS #h(0.4cm) 0,0025 → 2 CS #h(0.4cm) 2,50 → 3 CS #h(0.4cm) 3,2 × $10^3$ → 2 CS #h(0.4cm) 7,00 × $10^(-3)$ → 3 CS
]

#exercice[
#side-by-side(
  extable((
    (1, [Combien de CS a *48* ?], [#blanc(w: 1.2cm)]),
    (2, [Combien de CS a *0,0090* ?], [#blanc(w: 1.2cm)]),
    (3, [Combien de CS a *1,020* ?], [#blanc(w: 1.2cm)]),
  )),
  extable((
    (4, [Combien de CS a *5,0 × $10^4$* ?], [#blanc(w: 1.2cm)]),
    (5, [Combien de CS a *300,0* ?], [#blanc(w: 1.2cm)]),
    (6, [Combien de CS a *0,0360* ?], [#qcm-opt("a", "5") #h(0.2cm) #qcm-opt("b", "2") #linebreak() #qcm-opt("c", "3") #h(0.2cm) #qcm-opt("d", "4")]),
  )),
)
]

== Présentation du résultat d'un calcul

#important[
  *La calculatrice n'est pas la référence.* La calculatrice affiche souvent beaucoup plus de chiffres que ce que la mesure permet réellement de connaître. *Recopier tous les chiffres de l'écran n'est pas correct* : il faut arrondir le résultat au nombre de CS approprié.
]

#définition[
  *Règle pour un calcul.* Le résultat d'un calcul a *autant de CS que la donnée la moins précise*, c'est-à-dire celle qui a le *moins* de chiffres significatifs.
]

#exemple[
  Calculer 2,5 × 3,678. #linebreak()
  Calculatrice : 2,5 × 3,678 = 9,195 #linebreak()
  Donnée la moins précise : 2,5 (2 CS) → *résultat arrondi à 2 CS : 9,2*
]

#important[
  *La touche $times 10^x$ de la calculatrice.* Quand une donnée est écrite avec une puissance de 10 (ex : 3,2 × $10^(-3)$), on la saisit avec la touche *$times 10^x$* (parfois notée *EXP*) de la calculatrice — jamais en tapant séparément "×10" puis "^". #linebreak()
  Sur l'écran, le résultat peut s'afficher avec un *E* : par exemple *1.5E-3* signifie *1,5 × $10^(-3)$*. Il faut traduire ce "E" en écriture scientifique, jamais le recopier tel quel.
]

#exemple[
  *Vérifie ta compréhension.* La calculatrice affiche *2.4E-05*. Cela signifie : #linebreak()
  #qcm-opt("a", [2,4 × $10^5$]) #h(0.3cm) #qcm-opt("b", [2,4 × $10^(-5)$]) #linebreak()
  #qcm-opt("c", [24 × $10^(-5)$]) #h(0.3cm) #qcm-opt("d", [2,4 − 05])
]

#v(3pt)
#text(weight: "bold", size: 10pt)[Exercices — entraînement calculatrice]
#v(2pt)

_Effectue chaque calcul à la calculatrice (utilise la touche $times 10^x$ quand il le faut), puis recopie le résultat avec le bon nombre de CS._
#v(4pt)

#calcgrid(
  calcbox(1, $3,0 times 10^2 times 2,5 times 10^(-3)$),
  calcbox(2, $4,52 times 3,1$),
  calcbox(3, $(6,0 times 10^(-4)) / (1,5 times 10^2)$),
  calcbox(4, $(12,0) / (2,5 times 10^(-2))$),
  calcbox(5, $8,4 times 0,50$),
  calcbox(6, $9,81 times 2,0 times 10^1$),
)

#v(8pt)
#text(weight: "bold", size: 9.5pt, fill: rgb("#991b1b"))[Plus difficile — pense aux parenthèses (priorité des opérations)]
#v(2pt)

_Sur la calculatrice, un numérateur ou un dénominateur qui contient une somme ou une différence doit être saisi entre parenthèses, sinon le résultat est faux._
#v(4pt)

#calcgrid(
  calcbox(7, $(5,2 times 10^2 + 3,8 times 10^2) / (2,0 times 10^1)$),
  calcbox(8, $(8,0 times 10^3) / (1,5 times 10^2 + 2,5 times 10^2)$),
  calcbox(9, $(6,4 times 10^(-3) - 1,4 times 10^(-3)) / (2,5 times 10^(-1))$),
)

#pagebreak()

#[
#set heading(numbering: none)
#set text(size: 10pt)

= Corrigé — résultats attendus

_Seuls les résultats finaux sont donnés, sans détail des calculs._

#columns(2, gutter: 16pt)[
#text(weight: "bold", size: 11pt)[Puissances de 10 et conversions]
#v(4pt)

*Exercice 1*
+ 10 000
+ 0,001
+ 4
+ 600
+ 0,04
+ c) 1

*Exercice 2*
+ 4,5 × $10^3$
+ 3,7 × $10^(-3)$
+ 7,2 × $10^5$
+ 6 200
+ 0,0091
+ b) 4,5 × $10^4$

*Exercice 3*
+ $10^5$
+ $10^3$
+ $10^(-4)$
+ $10^6$
+ $10^(-2)$
+ d) $10^4$

*Exercice 4*
+ 2,5 × $10^(-2)$ m
+ 4,7 × $10^(-1)$ A
+ 2,5 × $10^3$ J
+ 8 × $10^(-6)$ s
+ 5 × $10^8$ Hz
+ 4,5 × $10^(-8)$ m
+ 2,5 × $10^3$ V
+ 7,5 × $10^(-4)$ g
+ 1,5 × $10^6$ W
+ 8 × $10^(-4)$ s

#text(weight: "bold", size: 11pt)[Chiffres significatifs]
#v(4pt)

*Compter les CS*
+ 2
+ 2
+ 4
+ 2
+ 4
+ c) 3

*Calculs à la calculatrice*
+ 7,5 × $10^(-1)$ (2 CS)
+ 14 (soit 1,4 × $10^1$ ; 2 CS)
+ 4,0 × $10^(-6)$ (2 CS)
+ 4,8 × $10^2$ (2 CS)
+ 4,2 (2 CS)
+ 2,0 × $10^2$ (2 CS)
+ 4,5 × $10^1$ (2 CS)
+ 2,0 × $10^1$ (2 CS)
+ 2,0 × $10^(-2)$ (2 CS)

*Vérifie ta compréhension* (E-notation)
+ b) 2,4 × $10^(-5)$
]
]
