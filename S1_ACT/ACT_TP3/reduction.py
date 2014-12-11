# -*- encoding: utf-8 -*-

# Retourne la moyenne pondérée d'un intervalle de niveaux de gris de la palette
# palette: la palette à analyser
# poids: le poids de chaque couleur de la palette
# start, stop: les indices indiquant l'intervalle de la palette à analyser
def meilleurGris(palette, poids, start, stop):
	somme = 0
	poidsTotal = 0
	for i in range(start, stop+1):
		somme += poids[i]*palette[i]
		poidsTotal += poids[i]
	return somme/poidsTotal

# Retourne la distance minimale qui résulterait de la fusion de l'intervalle [start,stop] de la palette
# palette: la palette à analyser
# poids: le poids de chaque couleur de la palette
# start, stop: les indices indiquant l'intervalle de la palette à analyser
def distanceMin(palette, poids, start, stop):
	# calcule la couleur qui va remplacer celles de [start,stop]
	ng = meilleurGris(palette, poids, start, stop)
	# calcul de la distance proprement dite
	somme = 0
	for i in range(start, stop+1): somme += poids[i]*(palette[i]-ng)*(palette[i]-ng)
	return round(somme)


# calcul de la distance minimale en nb couleurs (version récursive naïve)
def distanceMinimaleRecur(palette, poids, nbR, start):
  nbO = len(palette) # nb couleurs de la palette
  if nbR==1: return distanceMin(palette, poids, start, nbO-1) 
  # première valeur (pour i=start) est la valeur de min (pas de "int.maxval" en python)
  minDistance = distanceMinimaleRecur(palette, poids, nbR-1, start+1)
  for i in range(start+1, nbO-nbR+1):
    distance = distanceMin(palette, poids, start, i) + distanceMinimaleRecur(palette, poids, nbR-1, i+1)
    if distance<minDistance: minDistance = distance
  return minDistance


# exemple de palette pour test
palette = ( 0, 20, 100, 132, 164, 180, 255 )
weight = ( 5, 5, 1, 1, 2, 1, 10 )

print(meilleurGris(palette, weight, 2, 5))
print(distanceMin(palette, weight, 2, 5))
for i in range(1,8):
  print("Réduction de 7 à {}: distanceMinimaleRecur = {}".format(i, distanceMinimaleRecur(palette, weight, i, 0)))



