rem @echo off

start "compilation" /W %comspec% /c hmd.bat %1

java -jar G:\ANDROID\jhomade\jHomade-2.1.4.jar -vhdl -p COM12 %~n1.hmd 