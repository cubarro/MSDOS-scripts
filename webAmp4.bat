:: Convierte Webm a mp4 compatible con whatsapp
set "a=ArchivoDeEntrada"  :: Nombre del archivo
ffmpeg -i "%a%.webm" ^
  -c:v libx264  ^
  -profile:v  baseline  ^
  -level 3.0  ^
  -pix_fmt yuv420p "%a%.mp4"
:: La extensión puede cambiar de webm a avi u otra...
