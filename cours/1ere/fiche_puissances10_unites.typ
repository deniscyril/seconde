#set page(paper: "a4", margin: (x: 1.8cm, y: 1.6cm), numbering: "1")
#set text(font: "Liberation Serif", size: 10.8pt, lang: "fr")
#set par(justify: false, leading: 0.62em)
#set heading(numbering: none)

#let titlefont = "Liberation Sans"

// ───────── blocs réutilisables ─────────
#let rappel(title, body) = block(
  fill: rgb("#eef1ff"),
  stroke: (left: 2.6pt + rgb("#5448c8")),
  inset: 9pt,
  radius: 3pt,
  width: 100%,
  above: 10pt, below: 10pt,
)[#text(font: titlefont, weight: "bold", size: 9.5pt, fill: rgb("#3b2b8a"))[#upper(title)] \ #body]

#let exemple(title, body) = block(
  fill: rgb("#fff8e8"),
  stroke: (left: 2.6pt + rgb("#d97706")),
  inset: 9pt,
  radius: 3pt,
  width: 100%,
  above: 8pt, below: 12pt,
)[#text(font: titlefont, weight: "bold", size: 9.5pt, fill: rgb("#92400e"))[#upper(title)] \ #body]

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

// ───────── page de titre ─────────
#align(center)[
  #text(font: titlefont, size: 19pt, weight: "bold", fill: rgb("#1e1e2e"))[Fiche de Révision]

  #text(font: titlefont, size: 14pt, fill: rgb("#5448c8"))[Puissances de 10 — Conversion des unités]
]

// #v(4pt)
// #grid(
//   columns: (1fr, 1fr, 1fr),
//   [Nom : #blanc(w: 3.8cm)],
//   [Classe : #blanc(w: 2.8cm)],
//   [Date : #blanc(w: 2.8cm)],
// )

// #line(length: 100%, stroke: 0.4pt + gray)
// #v(6pt)

= Puissances de 10

== 1. Définitions et écritures des puissances de 10

#rappel[Puissances positives : $10^n$ ($n gt.eq 1$)][
  $10^n$ = 10 × 10 × ... × 10 ($n$ fois) : c'est un 1 suivi de $n$ zéros.
  Cas particulier : $10^0 = 1$.
]

#exemple[Exemple détaillé][
  $10^1 = 10$ #linebreak()
  $10^3 = 10 times 10 times 10 = 1 space 000$ #linebreak()
  $10^5 = 100 space 000$   
]

#rappel[Puissances négatives : $10^(-n)$][
  $10^(-n) = 1/10^n$ = 0,00…01 (avec $n$ zéros en comptant celui devant la virgule).
]

#exemple[Exemple détaillé][
  $10^(-1) = 1/10 = 0,1$ #linebreak()
  $10^(-2) = 1/100 = 0,01$ #linebreak()
//  $10^(-3) = 1/1000 = 0,001$
]

#rappel[Lien avec l'écriture décimale][
  • Multiplier par $10^n$ ($n>0$) → on déplace la virgule de $n$ rangs vers la *droite*. #linebreak()
  • Multiplier par $10^(-n)$ ($n>0$) → on déplace la virgule de $n$ rangs vers la *gauche*. #linebreak()
  • Pour passer de l'écriture décimale à une puissance de 10, on compte le nombre de rangs dont on déplace la virgule pour obtenir un 1 suivi de zéros (ou l'inverse).
]

#exemple[Exemple détaillé][
  3,5 × $10^2$ = 350 (virgule déplacée de 2 rangs vers la droite) #linebreak()
  8 × $10^(-3)$ = 0,008 (virgule déplacée de 3 rangs vers la gauche) #linebreak()
  3 500 = 3,5 × $10^3$ (3 rangs, puissance positive) #linebreak()
  0,0042 = 4,2 × $10^(-3)$ (3 rangs, puissance négative)
]

#v(3pt)
#text(font: titlefont, weight: "bold", size: 10pt)[Exercices]
#v(2pt)

#side-by-side(
  extable((
    (1, [Écris en écriture décimale : $10^4$], [#blanc()]),
    (2, [Écris en écriture décimale : $10^6$], [#blanc()]),
    (3, [Écris en écriture décimale : $10^(-2)$], [#blanc()]),
    (4, [Écris en écriture décimale : $10^(-4)$], [#blanc()]),
    (5, [Complète : 100 000 = $10^upright(?)$], [#blanc(w: 1.3cm)]),
  )),
  extable((
    (6, [Complète : 0,0001 = $10^upright(?)$], [#blanc(w: 1.3cm)]),
    (7, [Écris en écriture décimale : 7 × $10^3$], [#blanc()]),
    (8, [Écris en écriture décimale : 5 × $10^(-2)$], [#blanc()]),
    (9, [Combien vaut $10^0$ ?], [#qcm-opt("a", "0") #h(0.2cm) #qcm-opt("b", "1") #linebreak() #qcm-opt("c", "100") #h(0.2cm) #qcm-opt("d", "10")]),
    (10, [Classe dans l'ordre croissant : $10^(-3)$ ; $10^2$ ; $10^0$ ; $10^(-1)$ ; $10^4$], [#blanc(w: 2.4cm)]),
  )),
)

#v(4pt)

== 2. Écriture scientifique

#rappel[Définition][
  Un nombre est en *écriture scientifique* s'il s'écrit sous la forme $a times 10^n$, où : #linebreak()
  • $a$ est un nombre décimal avec un seul chiffre non nul avant la virgule : 1 ⩽ $a$ < 10 ; #linebreak()
  • $n$ est un entier relatif (positif, négatif ou nul).
]

#exemple[Exemples et contre-exemples][
  #text(weight: "bold", fill: rgb("#166534"))[✓ Écriture scientifique :] 3,5 × $10^8$ ; 7,2 × $10^(-5)$ ; 1,0 × $10^12$ #linebreak()
  #text(weight: "bold", fill: rgb("#991b1b"))[✗ Pas en écriture scientifique :] 35 × $10^7$ (il faut 3,5 × $10^8$) ; 0,42 × $10^3$ (il faut 4,2 × $10^2$)
]

#rappel[Méthode pour mettre en écriture scientifique][
  1. Déplacer la virgule pour avoir un seul chiffre non nul avant la virgule. #linebreak()
  2. Compter le nombre de rangs déplacés → c'est $n$ (sans le signe). #linebreak()
  3. Virgule déplacée vers la *gauche* → exposant *positif*. #linebreak()
  4. Virgule déplacée vers la *droite* → exposant *négatif*.
]

#exemple[Exemple détaillé][
  28 000 = 2,8 × $10^4$ (virgule déplacée de 4 rangs vers la gauche → +4) #linebreak()
  0,00053 = 5,3 × $10^(-4)$ (virgule déplacée de 4 rangs vers la droite → −4)
]

#v(3pt)
#text(font: titlefont, weight: "bold", size: 10pt)[Exercices]
#v(2pt)

#side-by-side(
  extable((
    (1, [Écris 3 500 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    (2, [Écris 27 000 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    (3, [Écris 580 000 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    (4, [Écris 0,0052 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
    (5, [Écris 0,00071 en écriture scientifique], [#blanc(w: 1.2cm) × $10^upright(?)$ #blanc(w: 0.9cm)]),
  )),
  extable((
    (6, [Écris en écriture décimale : 3,5 × $10^3$], [#blanc()]),
    (7, [Écris en écriture décimale : 7,2 × $10^(-4)$], [#blanc()]),
    (8, [Parmi ces nombres, lequel est en écriture scientifique ?], [#qcm-opt("a", [25×$10^6$]) #linebreak() #qcm-opt("b", [250×$10^5$]) #linebreak() #qcm-opt("c", [2,5×$10^7$]) #linebreak() #qcm-opt("d", [0,25×$10^8$])]),
    (9, [35 × $10^7$ n'est pas en écriture scientifique. Quelle est la forme correcte ?], [#qcm-opt("a", [3,5×$10^7$]) #linebreak() #qcm-opt("b", [35×$10^6$]) #linebreak() #qcm-opt("c", [350×$10^6$]) #linebreak() #qcm-opt("d", [3,5×$10^8$])]),
    (10, [Classe dans l'ordre croissant : 3,2 × $10^5$ ; $10^(-2)$ ; 7,5 × $10^3$ ; $10^7$], [#blanc(w: 2.4cm)]),
  )),
)

#v(4pt)

== 3. Opérations avec les puissances de 10

#rappel[Multiplication][
  $10^a times 10^b = 10^(a+b)$ — on *additionne* les exposants.
]
#exemple[Exemple détaillé][
  $10^3 times 10^2 = 10^(3+2) = 10^5$ #linebreak()
  $10^7 times 10^(-4) = 10^(7 + (-4)) = 10^3$
]

#rappel[Division][
  $10^a/10^b = 10^(a-b)$ — on *soustrait* les exposants.
]
#exemple[Exemple détaillé][
  $10^7/10^3 = 10^(7-3) = 10^4$ #linebreak()
  $10^2/10^5 = 10^(2-5) = 10^(-3)$
]

#rappel[Inverse][
  $1/10^a = 10^(-a)$ — on *change le signe* de l'exposant.
]
#exemple[Exemple détaillé][
  $1/10^3 = 10^(-3)$ #linebreak()
  $1/10^(-5) = 10^5$
]

#rappel[Puissance d'une puissance][
  $(10^a)^b = 10^(a times b)$ — on *multiplie* les exposants.
]
#exemple[Exemple détaillé][
  $(10^3)^2 = 10^(3 times 2) = 10^6$ #linebreak()
  $(10^(-2))^3 = 10^(-2 times 3) = 10^(-6)$
]

#block(
  fill: rgb("#f5f5f5"), stroke: 0.6pt + rgb("#ccc"), inset: 9pt, radius: 3pt, width: 100%, above: 8pt, below: 10pt,
)[
  #text(font: titlefont, weight: "bold", size: 9.5pt)[Récapitulatif des règles] #linebreak()
  Multiplication : $10^a times 10^b = 10^(a+b)$ #h(1fr) Division : $10^a/10^b = 10^(a-b)$ #linebreak()
  Inverse : $1/10^a = 10^(-a)$ #h(1fr) Puissance : $(10^a)^b = 10^(a b)$
]

#v(3pt)
#text(font: titlefont, weight: "bold", size: 10pt)[Exercices]
#v(2pt)

#side-by-side(
  extable((
    (1, [Calcule : $10^3 times 10^2 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (2, [Calcule : $10^7 times 10^(-4) = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (3, [Calcule : $10^7/10^3 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (4, [Calcule : $10^2/10^5 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (5, [Calcule : $1/10^3 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
  )),
  extable((
    (6, [Calcule : $1/10^(-5) = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (7, [Calcule : $(10^3)^2 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (8, [Calcule : $(10^(-2))^3 = 10^upright(?)$], [#blanc(w: 1.3cm)]),
    (9, [Que vaut $10^4 times 10^2$ ?], [#qcm-opt("a", [$10^8$]) #linebreak() #qcm-opt("b", [$10^6$]) #linebreak() #qcm-opt("c", [6]) #linebreak() #qcm-opt("d", [$10^2$])]),
    (10, [Calcule : $(10^3 times 10^(-2))/(10^1 times 10^(-4)) = 10^upright(?)$], [#blanc(w: 1.3cm)]),
  )),
)

#pagebreak()

= Partie 2 — Convertir les unités avec les préfixes

#block(
  fill: rgb("#f0f0ff"), stroke: 0.6pt + rgb("#c4b5fd"), inset: 9pt, radius: 3pt, width: 100%, below: 10pt,
)[
  La méthode est toujours la même, quelle que soit la grandeur physique (longueur, masse, durée, tension, intensité, fréquence, énergie, puissance…) : un préfixe est un facteur multiplicatif exprimé en puissance de 10.
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

#rappel[Méthode A — Convertir vers l'unité de base][
  On remplace le préfixe de l'unité source par sa valeur numérique (puissance de 10 correspondante).
]

#exemple[Exemple détaillé 1 — Longueur][
  Convertir 3 cm en m. #linebreak()
  1. Préfixe : *c* (centi) = $10^(-2)$ #linebreak()
  //. Donc 1 cm = $10^(-2)$ m #linebreak()
  2. 3 cm = 3 × $10^(-2)$ 
]

#exemple[Exemple détaillé 2 — Intensité (autre grandeur, même méthode)][
  Convertir 470 µA en A. #linebreak()
  1. Préfixe : *µ* (micro) = $10^(-6)$ #linebreak()
  //2. Donc 1 µA = $10^(-6)$ A #linebreak()
  2. 470 µA = 470 × $10^(-6)$ A = *4,70 × $10^(-4)$ A*
]

#rappel[Méthode B — Convertir entre deux préfixes][
  On passe toujours par l'unité de base comme étape intermédiaire. Raccourci : l'exposant du résultat est la différence *(exposant intial − exposant final)*.
]

#exemple[Exemple détaillé — Longueur][
  Convertir 5 km en cm. #linebreak()
  1. km  : k (kilo) = $10^3$ → exposant initial: *3*
  2. cm : c (centi) = $10^(-2)$ → exposant final: *-2*
  3. 5 km = 5 × $10^(3-(-2)) = 10^5$ cm 
]

#rappel[Méthode C — Cas particulier : le volume][
  Un volume est une longueur *au cube*. Si un préfixe de longueur vaut $10^a$, ce même préfixe élevé au cube (pour le volume) vaut $10^(3a)$ — c'est la règle *puissance d'une puissance* : $(10^a)^3 = 10^(3a)$. #linebreak()
  
  *À retenir*  : 
  - Le litre n'est pas une unité de base du SI : #align(center)[*1 L = 1 dm³* = $(10^(-1))^3$ m³ = *$10^(-3)$ m³*]
  - *1 mL = 1 cm³*  (verrerie de chimie graduée en mL). #linebreak()
  
]

#exemple[Exemple détaillé 1 — Depuis des cm³ (courant en chimie)][
  Convertir 25 cm³ en m³. #linebreak()
  1. c (centi) = $10^(-2)$ → 1 cm³ = $(10^(-2))^3$ m³ = $10^(-6)$ m³ #linebreak()
  2. 25 cm³ = 25 × $10^(-6)$ m³ = *2,5 × $10^(-5)$ m³*
]

#exemple[Exemple détaillé 2 — Depuis un préfixe du litre][
  Convertir 50 mL en m³. #linebreak()
  1. 1 mL = $10^(-3)$ L = $10^(-3) times 10^(-3)$ m³ = $10^(-6)$ m³ #linebreak()
  2. 50 mL = 50 × $10^(-6)$ m³ = *5 × $10^(-5)$ m³*
]

#v(10pt)

== Exercice 1

#side-by-side(
  extable((
    (1, [Convertir 25 mm en m], [#blanc(w: 2.4cm)]),
    (2, [Convertir 470 mA en A], [#blanc(w: 2.4cm)]),
    (3, [Convertir 2,5 kJ en J], [#blanc(w: 2.4cm)]),
    (4, [Convertir 8 µs en s], [#blanc(w: 2.4cm)]),
  )),
  extable((
    (5, [Convertir 0,5 GHz en Hz], [#blanc(w: 2.4cm)]),
    (6, [Convertir 3 km en cm], [#blanc(w: 2.4cm)]),
    (7, [Convertir 50 mL en m³], [#blanc(w: 2.4cm)]),
    (8, [Convertir 25 cm³ en m³], [#blanc(w: 2.4cm)]),
  )),
)

#v(4pt)
#line(length: 100%, stroke: 0.4pt + gray)
#v(2pt)

== Exercice 2

#side-by-side(
  extable((
    (1, [Convertir 45 nm en m], [#blanc(w: 2.4cm)]),
    (2, [Convertir 2,5 kV en V], [#blanc(w: 2.4cm)]),
    (3, [Convertir 750 µg en g], [#blanc(w: 2.4cm)]),
    (4, [Convertir 1,5 MW en W], [#blanc(w: 2.4cm)]),
    (5, [Convertir 0,8 ms en s], [#blanc(w: 2.4cm)]),
    (6, [Convertir 5 cm en mm], [#blanc(w: 2.4cm)]),
    (7, [Convertir 3 km en cm], [#blanc(w: 2.4cm)]),
  )),
  extable((
    (8, [Convertir 250 mA en µA], [#blanc(w: 2.4cm)]),
    (9, [Convertir 150 kHz en MHz], [#blanc(w: 2.4cm)]),
    (10, [Convertir 6 km en mm], [#blanc(w: 2.4cm)]),
    (11, [Convertir 250 mL en m³], [#blanc(w: 2.4cm)]),
    (12, [Convertir 0,0025 m³ en mL], [#blanc(w: 2.4cm)]),
    (13, [Convertir 800 cm³ en m³], [#blanc(w: 2.4cm)]),
  )),
)

#pagebreak()

#set text(size: 10pt)
= Corrigé — résultats attendus

_Seuls les résultats finaux sont donnés, sans détail des calculs._

#columns(2, gutter: 16pt)[
== Partie 1 — Puissances de 10

=== 1. Définitions et écritures
+ 10 000
+ 1 000 000
+ 0,01
+ 0,0001
+ 5
+ −4
+ 7 000
+ 0,05
+ b) 1
+ $10^(-3) < 10^(-1) < 10^0 < 10^2 < 10^4$

=== 2. Écriture scientifique
+ 3,5 × $10^3$
+ 2,7 × $10^4$
+ 5,8 × $10^5$
+ 5,2 × $10^(-3)$
+ 7,1 × $10^(-4)$
+ 3 500
+ 0,00072
+ c) 2,5 × $10^7$
+ d) 3,5 × $10^8$
+ $10^(-2) < 7,5 times 10^3 < 3,2 times 10^5 < 10^7$

=== 3. Opérations
+ $10^5$
+ $10^3$
+ $10^4$
+ $10^(-3)$
+ $10^(-3)$
+ $10^5$
+ $10^6$
+ $10^(-6)$
+ b) $10^6$
+ $10^4$

== Partie 2 — Convertir les unités

*Exercice 1*
+ 2,5 × $10^(-2)$ m
+ 4,7 × $10^(-1)$ A
+ 2,5 × $10^3$ J
+ 8 × $10^(-6)$ s
+ 5 × $10^8$ Hz
+ 3 × $10^5$ cm
+ 5 × $10^(-5)$ m³
+ 2,5 × $10^(-5)$ m³

*Exercice 2*
+ 4,5 × $10^(-8)$ m
+ 2,5 × $10^3$ V
+ 7,5 × $10^(-4)$ g
+ 1,5 × $10^6$ W
+ 8 × $10^(-4)$ s
+ 5 × $10^1$ mm
+ 3 × $10^5$ cm
+ 2,5 × $10^5$ µA
+ 1,5 × $10^(-1)$ MHz
+ 6 × $10^6$ mm
+ 2,5 × $10^(-4)$ m³
+ 2,5 × $10^3$ mL
+ 8 × $10^(-4)$ m³
]
