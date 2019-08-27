:: Para ejecutar interactivamente

:: Imágenes
:: cor_t2.gif
:: sag_t1.gif
:: sag_t2.gif
:: tra_t2.gif

:: Descargar ffmpeg y ubicar en carpeta c
set "c=C:\PortableApps\PortableApps.comLauncher\Other\Source\MyApps\ffmpeg\bin\"

set "a=scout"  :: Para el archivo
%c%ffmpeg.exe  -ignore_loop 0  ^
 -i %a%.gif -c:v libx264 ^
 -pix_fmt yuv420p ^
 -crf 4 -b:v 300K  ^
 -t 10 -movflags +faststart ^
 %a%.mp4

