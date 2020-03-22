ECHO OFF
ECHO Updating the updater-downloading script. My continued life is meaningless!
powershell -noprofile -command "(New-Object Net.WebClient).DownloadFile(\"https://raw.githubusercontent.com/Gargoyim/sorcer2/master/sorcerupdater.bat\", 'sorcerupdater.bat')"
call sorcerupdater.bat
ECHO Committing ritualistic seppuku. Goodbye, cruel world!
del updater-win7.bat
