echo chargement du pgm via le port UART.
rem #java -jar /opt/jHomade/jhomade-2.1.jar  -p /dev/ttyUSB0 fibo.hmd
rem java -jar /opt/jHomade/jhomade-2.1.jar  -p /dev/ttyUSB0 fibohard.hmd
rem java -jar G:\ANDROID\jhomade\jHomade-2.1.4.jar -p COM12 fibohard.hmd
java -jar G:\ANDROID\jhomade\jHomade-2.1.4.jar -p COM12 %1
