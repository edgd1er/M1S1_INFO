TP3 Reduction de couleurs


Le TP a été optimisé en stockant sous forme de tableau les calculs des distances, des intervalles de couleurs, des meilleurs gris, des correspondances de couleurs originales/reduites.

Dans Data, il y a les fichiers utilisés ( palette pour les tests de fonctions, et le babouin en pgm P5 (codage binaire).

TestAlgo est un programme prenant la palette init palette et propose une reduction de couleurs avec l'affichage du tableau de calcul, des index retenu et de la nouvelle palette.


le main se trouve dans reduce.java. celui ci permet le traitement du fichier indiqué en ligne 11,a savoir data\\baboon_gray.pgm.
En sortie sera crée le fichier data\\test.pgm, avec la reduction en nombre de couleurs indiquée en ligne 19.


Description du programme:
le main se trouve dans reduce.java.

l'image est chargé
        myImage= new PGM();
        myImage.setFilePath(img2read);
        myImage.readImage();
la palette est extraite
    pImg.extractPalette(myImage);
Definition du nombre de couleurs a atteindre (reduction)
    int newnbcolor=5;
Calcul de la meilleur distance
    pImg.distanceImage(pImg.nivGris.length, newnbcolor); -> appel getdistMemo par recursivité + memorisation des calculs.


une fois la meilleur distance connue, il faut retrouver les index.
par exemple pour 3 couleurs sur la palette init, la distance min est de 5096
retrouve index calcul la distance sur les index 0 a x et verifie que 5096-distance(0,x)=memo(3,x+1)
c'est vrai pour x=1 ( je crois) => 5096 -1000=4096
maintenant il faut trouver l'interval pour la couleur 2 tel que 4096-distancemin(x+1,y)=memo(2,y+1)
c'est vrai pour x=5 4096-4096=0;
maintenant il faut trouver l'interval pour la couleur 1 tel que 0-distancemin(y+1,z)=memo(1,z+1)
c'est vrai pour x=5 0-0=0;
    int index[] = pImg.retrouveIndex(test);
le tableau retourné est donc 1,5,6 cela veut dire que l'intervalle est
couleur1 0-1
couleur2 2-5
couleur3 6

il ne reste plus qu'a trouver la nouvelle palette. le plus simple etant de de faire un tableau de 255 , ou l'index sera egale au gris initial.
pImg.getNewPalette();  =>
    tq palette[i]<gris[1] => nouvelpalette[i] = meilleurGris[0,1]
    puis des que palette[i]>gris[1]
    tq palette[i]<gris[2] => nouvelpalette[i] = meilleurGris[2,5]
    puis des que palette[i]>gris[2]
    palette[i] meilleurGris[6,6]


Puis il faut maintenant donner au pixel la nouvelle couleur selon le tableau nouvellepalette
        pImg.SetNewpixel(myImage);
définir le nouveau nom de l'image
        myImage.setFilePath("data/test.pgm");
sauver l'image modifier
        myImage.writeImage(); 
