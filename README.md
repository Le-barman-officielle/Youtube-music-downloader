COMMENT UTILISER YOUTUBE AUDIO RIPPER
🚀 Étapes pour ajouter yt-dlp au PATH sous Windows
1. Télécharge yt-dlp.exe

Entrez la commande : winget install yt-dlp

2. Vérifier si yt-dlp est bien dans le PATH

Ouvre une nouvelle fenêtre PowerShell ou Invite de commandes.

Tape la commande suivante pour vérifier que yt-dlp est bien accessible depuis n'importe quel répertoire :

yt-dlp --version
Si tout a été configuré correctement, tu devrais voir la version de yt-dlp s'afficher, ce qui signifie que tu peux maintenant l'utiliser directement dans le terminal.

🚀 Étapes pour installer FFmpeg avec Winget sur Windows
1. Vérifier si Winget est installé
Avant de commencer, il est important de vérifier si Winget est bien installé sur ton système. Si tu as Windows 10 ou plus récent, Winget devrait être déjà installé.

Pour vérifier si Winget est installé, ouvre PowerShell ou Invite de commandes et tape la commande suivante :

winget --version
Si Winget est installé, tu verras la version s'afficher. Sinon, tu devras installer App Installer via le Microsoft Store.

2. Installer FFmpeg avec Winget
Ouvre PowerShell ou Invite de commandes en tant qu'administrateur.

Pour cela, cherche PowerShell dans le menu Démarrer, fais un clic droit dessus et choisis "Exécuter en tant qu'administrateur".

Tape la commande suivante pour installer FFmpeg via Winget :

winget install ffmpeg

Cette commande va installer FFmpeg sur ton système.

Attends quelques secondes pendant que l'installation se termine. Winget téléchargera et installera FFmpeg automatiquement.

3. Vérifier l'installation de FFmpeg
Une fois l'installation terminée, tu peux vérifier que FFmpeg est bien installé et accessible depuis n'importe quel terminal.

Ouvre une nouvelle fenêtre de PowerShell ou Invite de commandes.

Tape la commande suivante pour vérifier la version de FFmpeg et t'assurer qu'il est bien installé :

ffmpeg -version
Si l'installation a réussi, tu devrais voir la version de FFmpeg ainsi que des informations supplémentaires sur le logiciel.
