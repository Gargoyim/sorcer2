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

IF EXIST "mods/LibVulpes-1.7.10-0.1.19-universal.jar" (
    ECHO LibVulpes is already installed!
) ELSE (
    ECHO LibVulpes is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1UPtO7hE2VB50hDKY85zlJiA2cIzObp_8', 'LibVulpes-1.7.10-0.1.19-universal.jar')"
    ECHO Moving to mods folder
    move LibVulpes-1.7.10-0.1.19-universal.jar mods
)

IF EXIST "mods/Computronics-1.7.10-1.6.6.jar" (
    ECHO Computronics is already installed!
) ELSE (
    ECHO Computronics is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1Bu4S-4hATgaasIUvYJ9eRbWFkG2Fo_QX', 'Computronics-1.7.10-1.6.6.jar')"
    ECHO Moving to mods folder
    move Computronics-1.7.10-1.6.6.jar mods
)

IF EXIST "mods/OpenSecurity-1.7.10-1.0-117.jar" (
    ECHO OpenSecurity is already installed!
) ELSE (
    ECHO OpenSecurity is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=19c0BnFsWwXbO7kOez1DC0iggtw6iT4Zd', 'OpenSecurity-1.7.10-1.0-117.jar')"
    ECHO Moving to mods folder
    move OpenSecurity-1.7.10-1.0-117.jar mods
)

IF EXIST "mods/AsieLib-1.7.10-0.4.9.jar" (
    ECHO AsieLib is already installed!
) ELSE (
    ECHO AsieLib is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1KyjvTGnZuYYXoQXD8qN2nMoTh84kWOaZ', 'AsieLib-1.7.10-0.4.9.jar')"
    ECHO Moving to mods folder
    move AsieLib-1.7.10-0.4.9.jar mods
)

IF EXIST "mods/Animals-Plus-Mod-1.7.10.jar" (
    ECHO Animals Plus is already installed!
) ELSE (
    ECHO Animals Plus is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1KQb4eTSkWp8OThv9R7e51NFHyRR6jX0I', 'Animals-Plus-Mod-1.7.10.jar')"
    ECHO Moving to mods folder
    move Animals-Plus-Mod-1.7.10.jar mods
)

IF EXIST "mods/SpiceOfLife-mc1.7.10-1.3.11.jar" (
    ECHO Spice of Life shouldn't be there!
    del "mods/SpiceOfLife-mc1.7.10-1.3.11.jar"
    )
ECHO Update complete! 
