@echo off
rem placer vos chemin d'accès ici si besoin

set path=%PATH%;F:\Documents_utilisateurs\Francois\_Hubic\Documents\Formation\S1_AEO\TP6\gforth;
set hasm="F:\Documents_utilisateurs\Francois\_Hubic\Documents\Formation\S1_AEO\TP6\hasmV5.fs"

del %~n1.hmd

powershell gforth.exe %hasm% %~n1.fsh -e bye


copy /B .\homade.hmd+.\homade.shmd %~n1.hmd
del .\homade.hmd
del .\homade.shmd
del .\homade.www




