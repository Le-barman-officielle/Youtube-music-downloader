@echo off
color 0A
title YT Audio Downloader - Style Hacker

:menu
cls
echo.
echo ================================
echo      YOUTUBE AUDIO RIPPER      
echo ================================
echo.
set /p URL=Colle ici le lien YouTube : 
echo.
echo ================================
echo   Choisis ton format audio :
echo.
echo   1 - MP3 (Qualité élevée, VBR)
echo   2 - FLAC (Qualité sans perte)
echo ================================
echo.
set /p FORMAT=Entre 1 ou 2 : 
echo.

if "%FORMAT%"=="1" (
    echo >> Téléchargement en MP3...
    yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o "%%(title)s.%%(ext)s" "%URL%" && explorer .
) else if "%FORMAT%"=="2" (
    echo >> Téléchargement en FLAC...
    yt-dlp -f bestaudio --extract-audio --audio-format flac -o "%%(title)s.%%(ext)s" "%URL%" && explorer .
) else (
    echo [ERREUR] Format inconnu. Réessaie...
    pause
    goto menu
)

echo.
echo ================================
echo        TELECHARGEMENT FINI      
echo ================================
pause
exit
