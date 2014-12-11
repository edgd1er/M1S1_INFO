#ifndef REDUCTION_H
#define REDUCTION_H

#include <vector>

namespace reduction {
using namespace std;

// convenance
typedef unsigned int uint;
// le type d'un niveau de gris
typedef unsigned char GrayLevel;

GrayLevel meilleurGris(const vector<GrayLevel>&, const vector<uint>&, uint, uint);
uint distanceMin(const vector<GrayLevel>&, const vector<uint>&, uint, uint);
uint distanceMinimale(const vector<GrayLevel> &, const vector<uint> &, uint, vector<uint> &);
void reduce(vector<GrayLevel> &, const uint);

// pour tests, à virer 
void calcPalette(const vector<GrayLevel> &, vector<GrayLevel> &, vector<uint> &);


} // namespace
#endif // _REDUCTION_H
