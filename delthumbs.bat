echo @off
echo suppression des thumbs.db
del /s /AH thumbs.db
echo suppression des *~
del /s /AH *.*~
echo suppression des .fuse*
del /s /AH .fuse*

pause