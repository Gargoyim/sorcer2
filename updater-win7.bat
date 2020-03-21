ECHO OFF
ECHO Checking for all changes made through these updates so far...
IF EXIST "mods/OpenComputers-MC1.7.10-1.7.5.1290-universal.jar" (
    ECHO OpenComputers is already installed!
) ELSE (
    ECHO OpenComputers is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1KKxN71Qutja_ArIcm8YRvj7QY7uu-6hL', 'OpenComputers-MC1.7.10-1.7.5.1290-universal.jar')"
    ECHO Moving to mods folder
    move OpenComputers-MC1.7.10-1.7.5.1290-universal.jar mods
)
ECHO Update complete!