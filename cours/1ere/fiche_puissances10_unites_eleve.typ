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

// ───────── en-tête de la fiche ─────────
#block(
  width: 100%, fill: c-primary, radius: 4pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(columns: (1fr, auto),
    text(fill: white, weight: "bold", size: 15pt)[
      Puissances de 10 — Conversion des unités
    ],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Première],
  )
]
#v(0.5em)

= Puissances de 10

== Définitions et écritures des puissances de 10

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  [
    #définition[
      *Puissances positives* ($10^n$, $n gt.eq 1$). $10^n$ = 10 × 10 × ... × 10 ($n$ fois) : un 1 suivi de $n$ zéros. Cas particulier : $10^0 =$ #blanc(w: 1.2cm).
    ]
    #exemple[
      $10^1 = 10$ #h(0.4cm) $10^3 = 1 space 000$ #h(0.4cm) $10^5 =$ #blanc(w: 1.8cm)
    ]
  ],
  [
    #définition[
      *Puissances négatives* ($10^(-n)$). $10^(-n) = 1/10^n$ = 0,00…01 (avec $n$ zéros en comptant celui devant la virgule).
    ]
    #exemple[
      $10^(-1) = 1/10 = 0,1$ #h(0.4cm) $10^(-2) = 1/100 =$ #blanc(w: 1.4cm)
    ]
  ]
)

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  définition[
    *Lien avec l'écriture décimale.* Multiplier par $10^n$ ($n>0$) → virgule déplacée de $n$ rangs vers la *droite*. Multiplier par $10^(-n)$ → vers la *gauche*. Pour passer de l'écriture décimale à une puissance de 10, on compte le nombre de rangs pour obtenir un 1 suivi de zéros.
  ],
  exemple[
    3,5 × $10^2$ = 350 (2 rangs à droite) #linebreak()
    8 × $10^(-3)$ = 0,008 (3 rangs à gauche) #linebreak()
    3 500 = 3,5 × $10^3$ #h(0.3cm) 0,0042 = 4,2 × #blanc(w: 1.6cm)
  ]
)

#exercice[
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
]

== Écriture scientifique

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  [
    #définition[
      Un nombre est en *écriture scientifique* s'il s'écrit $a times 10^n$, où : $a$ a un seul chiffre non nul avant la virgule (1 ⩽ $a$ < 10) et $n$ est un entier relatif.
    ]
    #exemple[
      #text(weight: "bold", fill: rgb("#166534"))[✓] 3,5×$10^8$ ; 7,2×$10^(-5)$ ; 1,0×$10^12$ #linebreak()
      #text(weight: "bold", fill: rgb("#991b1b"))[✗] 35×$10^7$ (il faut 3,5×$10^8$) ; 0,42×$10^3$ (il faut 4,2×$10^2$)
    ]
  ],
  [
    #définition[
      *Méthode.* 1. Déplacer la virgule pour un seul chiffre non nul avant. #linebreak()
      2. Compter les rangs déplacés → c'est $n$. #linebreak()
      3. Vers la *gauche* → exposant #blanc(w: 1.8cm). #linebreak()
      4. Vers la *droite* → exposant #blanc(w: 1.8cm).
    ]
    #exemple[
      28 000 = 2,8×$10^4$ (4 rangs à gauche → +4) #linebreak()
      0,00053 = 5,3×$10^(-4)$ (4 rangs à droite → −4)
    ]
  ]
)

#exercice[
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
]

== Opérations avec les puissances de 10

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  définition[
    $10^a times 10^b = 10^(a+b)$ — on #blanc(w: 2cm) les exposants. #linebreak() $10^a/10^b = 10^(a-b)$ — on #blanc(w: 2cm) les exposants.
  ],
  exemple[
    $10^3 times 10^2 = 10^5$ #h(0.5cm) $10^7 times 10^(-4) = 10^3$ #linebreak()
    $10^7/10^3 = 10^4$ #h(0.5cm) $10^2/10^5 = 10^(-3)$
  ]
)

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  définition[
    $1/10^a = 10^(-a)$ — on #blanc(w: 2.4cm) de l'exposant. #linebreak() $(10^a)^b = 10^(a times b)$ — on #blanc(w: 2cm) les exposants.
  ],
  exemple[
    $1/10^3 = 10^(-3)$ #h(0.5cm) $1/10^(-5) = 10^5$ #linebreak()
    $(10^3)^2 = 10^6$ #h(0.5cm) $(10^(-2))^3 = 10^(-6)$
  ]
)

#important[
  *Récapitulatif des règles.* Multiplication : $10^a times 10^b = 10^(a+b)$ #h(1fr) Division : $10^a/10^b = 10^(a-b)$ #linebreak()
  Inverse : $1/10^a = 10^(-a)$ #h(1fr) Puissance : $(10^a)^b = 10^(a b)$
]

#exercice[
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
]
#pagebreak()
= Convertir les unités avec les préfixes

#grid(columns: (1.1fr, 1fr), column-gutter: 10pt,
  définition[
    La méthode est toujours la même, quelle que soit la grandeur physique (longueur, masse, durée, tension, intensité, fréquence, énergie, puissance…) : un préfixe est un facteur multiplicatif exprimé en puissance de 10.
  ],
  align(center)[
    #text(size: 9pt)[#table(
      columns: 4,
      stroke: 0.5pt + gray,
      inset: 4.5pt,
      align: center + horizon,
      table.header([*Symbole*], [*Nom*], [*Puiss. 10*], [*Valeur*]),
      [G], [giga], [$10^9$], [1 000 000 000],
      [M], [méga], [$10^6$], [1 000 000],
      [k], [kilo], [$10^3$], [1 000],
      [—], [(base)], [$10^0 = 1$], [1],
      [d], [déci], [$10^(-1)$], [0,1],
      [c], [centi], [$10^(-2)$], [0,01],
      [m], [milli], [$10^(-3)$], [0,001],
      [µ], [micro], [$10^(-6)$], [0,000 001],
      [n], [nano], [$10^(-9)$], [0,000 000 001],
    )]
  ]
)

#définition[
  *Méthode A — convertir vers l'unité de base.* On remplace le préfixe de l'unité source par sa valeur numérique (puissance de 10 correspondante), puis on multiplie.
]

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  exemple[
    *Ex. 1 — Longueur.* Convertir 3 cm en m. #linebreak()
    Préfixe *c* = $10^(-2)$ → 3 cm = 3 × $10^(-2)$ m
  ],
  exemple[
    *Ex. 2 — Intensité.* Convertir 470 µA en A. #linebreak()
    Préfixe *µ* = $10^(-6)$ → 470×$10^(-6)$ A = #blanc(w: 2.6cm)
  ]
)

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  définition[
    *Méthode B — entre deux préfixes.* On passe toujours par l'unité de base comme étape intermédiaire. Raccourci : l'exposant du résultat = exposant #blanc(w: 4.4cm).
  ],
  exemple[
    Convertir 5 km en cm. #linebreak()
    k = $10^3$ (initial : 3) ; c = $10^(-2)$ (final : −2) #linebreak()
    5 km = 5 × $10^(3-(-2)) = 10^5$ cm
  ]
)

#définition[
  *Méthode C — cas particulier du volume.* Un volume est une longueur *au cube*. Si un préfixe de longueur vaut $10^a$, ce même préfixe élevé au cube (pour le volume) vaut $10^(3a)$ — règle *puissance d'une puissance* : $(10^a)^3 = 10^(3a)$. #linebreak()
  *À retenir.* Le litre n'est pas une unité de base du SI : *1 L = 1 dm³* = $10^(-3)$ m³. Aussi : *1 mL = 1 cm³* (verrerie de chimie graduée en mL).
]

#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  exemple[
    *Ex. 1 — depuis des cm³ (chimie).* Convertir 25 cm³ en m³. #linebreak()
    c = $10^(-2)$ → 1 cm³ = $10^(-6)$ m³ → 25 cm³ = *2,5×$10^(-5)$ m³*
  ],
  exemple[
    *Ex. 2 — depuis un préfixe du litre.* Convertir 50 mL en m³. #linebreak()
    1 mL = $10^(-3)$ L = $10^(-6)$ m³ → 50 mL = #blanc(w: 2.6cm)
  ]
)

#exercice[
  *Convertir vers l'unité de base*

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
]

#exercice[
  *Convertir entre deux préfixes*

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
]

#align(center)[
  #text(size: 15pt, weight: "bold", fill: rgb("#5448c8"))[Pour aller plus loin]
]

#v(10pt)

#block(
  fill: rgb("#eef1ff"), stroke: 0.6pt + rgb("#c4b5fd"), inset: 16pt, radius: 4pt, width: 100%,
)[
  #grid(
    columns: (3.4cm, 1fr),
    column-gutter: 20pt,
    align: (center + horizon, left + horizon),
    image("../figures/qr_portail_apps.png", width: 3.2cm),
    [
      #text(weight: "bold", size: 11pt)[Révise et entraîne-toi chez toi]
      #v(4pt)
      Retrouve sur le portail les applications numériques faites pour la classe : méthodes expliquées pas à pas et exercices auto-corrigés, à ton rythme.
      #v(6pt)
      #text(weight: "bold", size: 10.5pt)[https://deniscyril.github.io/physiquechimie/]
      #v(4pt)
      #text(size: 9pt, style: "italic")[Scanne le QR code avec ton téléphone, ou tape l'adresse dans un navigateur.]
    ]
  )
]

#v(14pt)

#travail[
  *Avant de partir, vérifie que tu sais…* #linebreak()
  • Écrire un nombre en écriture scientifique et repasser à l'écriture décimale. #linebreak()
  • Additionner / soustraire les exposants lors d'une multiplication ou d'une division de puissances de 10. #linebreak()
  • Convertir une grandeur physique d'un préfixe vers un autre (méthode A, B ou C selon le cas).
]
