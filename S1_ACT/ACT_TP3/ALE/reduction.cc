#include "reduction.h"
#include <array>
#include <iostream>
namespace reduction {

/* calcule le vecteur de niveaux de gris de img et les poids associés, dans l'ordre croissant
 * img: vecteur de pixels 
 * EFFET DE BORD: modifie palette et poids
 * HYPOTHESE: MAXGRAY niveaux de gris maximum
 */
#define MAXGRAY 256
void calcPalette(const vector<GrayLevel> &img, vector<GrayLevel> &palette, vector<uint> &poids) {
  vector<uint> poidsT(MAXGRAY);
  // initialisation
  for (uint w : poidsT) w = 0; 
  // parcours de l'image et remplissage du tableau
  for (GrayLevel gris : img) poidsT[gris]++;
  //for (uint i=0; i<poidsT.size(); i++) cout << (int) poidsT[i] << " ";
  // création de la palette et des poids par élimination des niveaux non utilisés
  palette.clear();
  poids.clear();
  for (uint i=0; i<poidsT.size(); i++) {
	  if (poidsT[i]!=0) {
		  palette.push_back(i); // nouvelle couleur
	          poids.push_back(poidsT[i]); // poids associé
	  }
  }
}

/* applique les réductions d'intervalles de groups sur l'image
 * img: vecteur de pixels
 * palette: la palette utilisée dans l'img originale
 * groups: les indices des intervalles de réduction à appliquer
 * EFFET DE BORD: img est modifiée
 */
void applyGroups(vector<GrayLevel> &img, vector<GrayLevel> &palette, vector<uint> &poids, vector<uint> &groups) {
  // commence par calculer les couleurs réduites une fois pour toutes
  vector<GrayLevel> paletteReduite(groups.size());
  uint start = 0;
  for (uint i=0; i<paletteReduite.size(); i++) { 
	  paletteReduite[i] = meilleurGris(palette, poids, start, groups[i]);
	  start = groups[i]+1;
  }
  // précalcule un mapping entre les couleurs originales et les réduites
  vector<GrayLevel> grisReduits(MAXGRAY);
  uint k=0;
  for (uint i=0; i<palette.size(); i++) {
	  if (i>groups[k]) k++;
	  grisReduits[palette[i]] = paletteReduite[k]; // le group[k] se transforme en paletteReduite[k]
  } // TODO: à vérifier

  // parcours les pixels de l'image et les remplace par la couleur ad hoc
  for (GrayLevel &gris : img) gris = paletteReduite[gris];
}

/* "réduit" un vecteur de pixels en utilisant uniquement nbC couleurs
 * img: le vecteur de pixels (niveaux de gris)
 * nbC: le nombre de niveaux de gris final
 * Effet de bord: img est modifiée
 */
void reduce(vector<GrayLevel> &img, const uint nbC) {
   vector<GrayLevel> palette;
   vector<uint> poids;
   // calcul de la palette et des poids 
   calcPalette(img, palette, poids);
   // calcul de la palette réduite et des réductions
   vector<uint> groups(nbC); // les indices des intervalles
   distanceMinimale(palette, poids, nbC, groups);
   // on applique la réduction de palette définie par groups sur l'image
   applyGroups(img, palette, poids, groups);
}

/* Retourne la moyenne pondérée d'un intervalle de niveaux de gris de la palette
 * palette: la palette à analyser
 * poids: le poids de chaque couleur de la palette
 * start, stop: les indices indiquant l'intervalle de la palette à analyser
 */
GrayLevel meilleurGris(const vector<GrayLevel> &palette, const vector<uint> &poids, uint start, uint stop) {
	uint somme = 0;
	uint poidsTotal = 0;
	for (uint i=start; i<=stop; i++) {
		somme += poids[i]*palette[i];
		poidsTotal += poids[i];
	}
	return static_cast<GrayLevel>(somme/poidsTotal);
}

/* Retourne la distance minimale qui résulterait de la fusion de l'intervalle [start,stop] de la palette
 * palette: la palette à analyser
 * poids: le poids de chaque couleur de la palette
 * start, stop: les indices indiquant l'intervalle de la palette à analyser
 */
uint distanceMin(const vector<GrayLevel> &palette, const vector<uint> &poids, uint start, uint stop) {
	// calcule la couleur qui va remplacer celles de [start,stop]
	GrayLevel ng = meilleurGris(palette, poids, start, stop);
	unsigned int somme = 0;
	for (uint i=start; i<=stop; i++) {
		somme += poids[i]*(palette[i]-ng)*(palette[i]-ng);
	}
	return somme;
}

/* calcule de la distance minimale en nb couleurs,
 * ainsi que les intervalles permettant de l'obtenir
 * palette: la palette à analyser
 * poids: le poids de chaque couleur de la palette
 * nbR: le nombre de couleurs de la palette réduite
 * groups: la valeur des indices de regroupement. 
 * les intervalles de regroupement sont:
 * [0;groups[0]], ]groups[0]; groups[1]], ..., ]groups[nbR-1]].
 */
uint distanceMinimale(const vector<GrayLevel> &palette, const vector<uint> &poids, const uint nbR, vector<uint> &groups) {
  const uint nbO = palette.size(); // nombre de couleurs originales
  // création des tableaux DM et PM
  uint DM[nbR][nbO+1];
  uint PM[nbR][nbO];
  // initialisation quand p=0 (1 couleur utilisée)
  for (uint i=0; i<nbO; i++) DM[0][i] = distanceMin(palette, poids, i, nbO-1);

  for (uint p=1; p<nbR; p++) { // nombre de couleurs (p+1) à utiliser
    for (uint i=0; i<nbO-p; i++) {
      // calcul d'un min sur les indices m=i...n-1
      // première valeur pour initialiser le mini
      uint mini = distanceMin(palette, poids, i, i) + DM[p-1][i+1];
      PM[p][i] = i;
      for (uint m=i+1; m<nbO; m++) {
        uint val = distanceMin(palette, poids, i, m) + DM[p-1][m+1];
        if (val<mini) { 
          mini = val;
          PM[p][i] = m;
	}
      }
      DM[p][i] = mini;
    }
  }

  // constitution des intervalles à regrouper    
  // TODO: BUG ??
  groups[0] = PM[nbR-1][0];
  for (uint i=1; i<nbR-2; i++) groups[i] = PM[nbR-i-1][groups[i-1]+1];
  groups[nbR-1] = nbO;

  return DM[nbR-1][0]; // distance minimale avec nbR couleurs sur l'ensemble de la palette
}

} // namespace

