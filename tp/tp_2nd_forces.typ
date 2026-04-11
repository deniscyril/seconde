#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP Forces]
// 1 atelier par paillasse : 
// Atelier 1 : éprouvette remplie d'huile + solution de permanganate + bécher 25 mL + pipette plastique + essuie tout
// Atelier 2 : 2 briques + 1 planche en bois
// Atelier 3 :  aiguille aimantée sur pivot + aimant
// Atelier 4 : (support + pince + aimant )+ ficelle attachée au support + clou
// Atelier 5 : masse suspendue à un ressort
// Atelier 6 : boule électrostatique avec support + baguette ébonite + peau de chat
// Atelier 7 :  cristallisoir + bouchon en liège

*Consignes* Pour chaque atelier, après avoir repérer le système vous réaliserez un DOI. Puis, vous compléterez les schémas en représentant les forces qui agissent sur le système. 

⚠️ Dans chacune des situations ci-dessous, on admet que les forces qui agissent sur le système se *compensent*. On en tiendra compte dans la représentation des vecteurs forces sur chaque schéma.


#table(
  // 1fr pour l'image (1/3 de la page), 2fr pour le texte (2/3 de la page)
  columns: (1fr, 2fr), 
  rows: 8,
  // Centre le contenu verticalement (horizon) dans les cellules
  align: (center + horizon, left ), 
  
  // Optionnel : un peu d'espace à l'intérieur des cellules
  inset: 10pt,

  // --- LIGNE 1 ---
  image("figures/atelier1.jpeg", width: 80%), 
  [Système: la goutte.],

  // --- LIGNE 2 ---
  image("figures/atelier2.jpeg", width: 80%), 
  [Système: La brique posée sur la planche ],

  // --- LIGNE 3 ---
 image("figures/atelier3.jpeg", width: 90%), 
  [Système: l'aiguille aimantée d'une boussole],
  // --- LIGNE 4 ---
 image("figures/atelier4.jpeg", width: 80%), 
  [Système: le clou en fer],

  // --- LIGNE 5 ---
 image("figures/atelier5.jpeg", width: 60%), 
  [Système: La masse accrochée au ressort],

  // --- LIGNE 6 ---
 image("figures/atelier6.jpeg", width: 80%), 
  [Système: la boule d'aluminium accrochée à la ficelle],
 image("figures/atelier7.jpeg", width: 60%), 
  [Système: Le bouchon qui flotte],
   image("figures/atelier5.jpeg", width: 60%), 
  [Système: Le *RESSORT*],
)

