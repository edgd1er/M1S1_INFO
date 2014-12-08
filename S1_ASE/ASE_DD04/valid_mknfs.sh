#
#Validation des commandes mknfs et dfs
#
# F.Dubiez 10/11/2014
#
# recuperation de la variable locale
# creation du filesystem sur le volume X (+superblock)
# lecture des 8 volumes et  affichage si defini

export CURRENT_VOLUME=0
echo "\ncreation du fs sur le volume : $CURRENT_VOLUME"
./mknfs
echo "\naffichage des nfs"
./dfs

echo
export CURRENT_VOLUME=1
echo "\ncreation du fs sur le volume : $CURRENT_VOLUME"
./mknfs
echo "\naffichage des nfs"
./dfs


echo
export CURRENT_VOLUME=7
echo "\ncreation du fs sur le volume : $CURRENT_VOLUME ( erreur car mkvol non realise precedemment)"
./mknfs
echo "\naffichage des nfs"
./dfs

