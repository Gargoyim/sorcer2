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

IF EXIST "mods/AdvancedRocketry-1.7.10-1.0.19b.jar" (
    ECHO Advanced Rocketry is already installed!
) ELSE (
    ECHO Advanced Rocketry is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1fJ2Ya71dXXk2VJ5trp3R2Bni0uJ_TsA6', 'AdvancedRocketry-1.7.10-1.0.19b.jar')"
    ECHO Moving to mods folder
    move AdvancedRocketry-1.7.10-1.0.19b.jar mods
)

LibVulpes-1.7.10-0.1.19-universal.jar
IF EXIST "mods/LibVulpes-1.7.10-0.1.19-universal.jar" (
    ECHO LibVulpes is already installed!
) ELSE (
    ECHO LibVulpes is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1UPtO7hE2VB50hDKY85zlJiA2cIzObp_8', 'LibVulpes-1.7.10-0.1.19-universal.jar')"
    ECHO Moving to mods folder
    move LibVulpes-1.7.10-0.1.19-universal.jar mods
)

IF EXIST "mods/SpiceOfLife-mc1.7.10-1.3.11.jar" (
    ECHO Spice of Life shouldn't be there!
    del "mods/SpiceOfLife-mc1.7.10-1.3.11.jar"
    )
ECHO Update complete! 
