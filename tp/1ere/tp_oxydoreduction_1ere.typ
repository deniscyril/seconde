#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Transferts d'électrons : premières réactions d'oxydoréduction - 1ère]

*Contexte* : Certains métaux mis en contact avec des solutions d'ions métalliques se transforment, d'autres non. À travers trois expériences simples, on cherche à identifier ce qui est échangé entre les espèces chimiques. Ces observations conduiront aux notions d'oxydant, de réducteur et de couple oxydant/réducteur.


*Matériel par binôme* :
#columns(2, gutter: 1em)[
- 4 tubes à essais + porte-tubes
- 1 clou en fer + papier de verre
- 1 lame (ou fil) de cuivre
- 2 pipettes Pasteur, 1 pince
- Bécher de récupération des déchets
#colbreak()
- Sulfate de cuivre (II) (Cu#super[2+] + SO#sub[4]#super[2−]) à 0,1 mol/L
- Sulfate de fer (II) (Fe#super[2+] + SO#sub[4]#super[2−]) à 0,1 mol/L
- Soude (Na#super[+] + HO#super[−]) à 0,1 mol/L, flacon compte-gouttes
- Blouse, lunettes, gants
]

#important[
  Les solutions de sulfate de cuivre et de soude sont irritantes : port des lunettes et des gants obligatoire. Aucune solution ne doit être jetée à l'évier : tout est récupéré dans le bécher prévu, puis dans le bidon de la salle.
]

= Expérience 1 : un clou dans une solution de sulfate de cuivre

#experience[
  1. Verser environ 5 mL de solution de sulfate de cuivre dans un tube à essais. Noter sa couleur.
  2. Plonger le clou décapé dans le tube et attendre une dizaine de minutes (on peut avancer l'expérience 3 pendant ce temps).
  3. Observer la couleur à la surface du clou.
  4. *Tube témoin* : dans un deuxième tube, verser 2 mL de la solution de sulfate de cuivre initiale et ajouter quelques gouttes de soude. Noter la couleur du précipité.
  5. *Test* : prélever 2 mL de la solution qui a été en contact avec le clou, la placer dans un troisième tube et ajouter quelques gouttes de soude. Noter la couleur du précipité.
]

#travail[
  _Données : avec la soude, Cu#super[2+] donne un précipité bleu, Fe#super[2+] un précipité vert._
  + Quel métal s'est déposé sur le clou ?
  + Quel ion a disparu de la solution ? Quel ion est apparu ? Justifier.
  + Écrire l'équation de la réaction.
  + Fe devient Fe#super[2+] : combien d'électrons a-t-il perdus ? Qui les a captés ?
]

= Expérience 2 : l'arbre de Diane (expérience réalisée au bureau)

#experience[
  Le professeur plonge un fil de cuivre enroulé dans une solution de nitrate d'argent (Ag#super[+] + NO#sub[3]#super[−]), incolore. 
]

#travail[
  + Quel métal se dépose sur le fil ? Quel ion apparaît en solution ?
  + Écrire l'équation de la réaction.
  + Ici, le cuivre cède-t-il ou capte-t-il des électrons ? Comparer avec l'expérience 1.
]

= Expérience 3 : une lame de cuivre dans une solution de sulfate de fer (II)

#experience[
  1. Verser environ 5 mL de solution de sulfate de fer (II) dans un tube à essais.
  2. Plonger la lame de cuivre décapée et attendre une dizaine de minutes.
  3. Observer la lame et la solution.
]

#travail[
  + Y a-t-il eu une transformation ? Justifier.
  + Un métal réagit-il avec n'importe quel ion métallique ?
]

= Synthèse

#travail[
  Compléter le tableau.

  #table(
    columns: (1fr, 1fr, 1fr, 1.4fr),
    inset: 8pt,
    align: center + horizon,
    table.header(
      [*Expérience*], [*Espèce qui cède des électrons*], [*Espèce qui capte des électrons*], [*Preuve expérimentale*],
    ),
    [Exp n°1: Fe + Cu#super[2+]], [], [], [#v(1.5cm)],
    [Exp n°2:  Cu + Ag#super[+]], [], [], [#v(1.5cm)],
    [Exp n°3:  Cu + Fe#super[2+]], [], [], [#v(1.5cm)],
  )
]
