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

:: Obtenir la date complète et l'heure exacte
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set "hour=%%a"
    set "minute=%%b"
)

:: Formater la date et l'heure comme "AAAA-MM-JJ HH:MM"
set "current_time=%year%-%month%-%day% %hour%:%minute%"

if "%FORMAT%"=="1" (
    echo >> Téléchargement en MP3...
    yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o "%%(title)s.%%(ext)s" "%URL%" && explorer .
    echo %current_time% - %URL% >> historique.txt
) else if "%FORMAT%"=="2" (
    echo >> Téléchargement en FLAC...
    yt-dlp -f bestaudio --extract-audio --audio-format flac -o "%%(title)s.%%(ext)s" "%URL%" && explorer .
    echo %current_time% - %URL% >> historique.txt
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
