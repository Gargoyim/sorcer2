:: SETLOCAL to prevent variables we set from becoming global for the entire CMD session.
@ECHO OFF & SETLOCAL
SET gitusername=Gargoyim
:: Gets new sorcerupdater.bat from github and replace this one. Batch will continue from line 6 of the new sorcerupdater.bat.
powershell -noprofile -command "(New-Object Net.WebClient).DownloadFile(\"https://raw.githubusercontent.com/$env:gitusername/sorcer2/master/sorcerupdater.bat\", 'sorcerupdater.bat')"

ECHO.
ECHO Checking for all changes made through these updates so far...
ECHO.

:: Pull a list of mods and their download location. The modlist.txt should be in the modfile <space> modurl format. Loop over each line in modlist.txt.
FOR /F "usebackq delims=" %%l IN (`powershell -noprofile -Command "Invoke-WebRequest https://raw.githubusercontent.com/$env:gitusername/sorcer2/master/modlist.txt | Select -ExpandProperty "Content""`) DO (
	:: We need l (line) to be in the "environment" (it's currently technically just an argument from FOR [%%l vs %l%], it's weird) so powershell can pick up on it.
	SET l=%%l
	
	:: Split l (line) apart to get f (filename) and u (url). These lines look like loops but they only happen once. It's just the easiest way to get powershell output as a variable.
	FOR /F "usebackq delims=" %%f IN (`powershell -noprofile -command "$env:l.split(' ')[0]"`) DO (
		FOR /F "usebackq delims=" %%u IN (`powershell -noprofile -command "$env:l.split(' ')[1]"`) DO (
			IF EXIST mods/%%f (
				ECHO %%f is already installed!
			) ELSE (
				ECHO %%f is not installed! Downloading...
				
				:: We need f (filename) and u (url) to be in the "environment" so powershell can pick up on them.
				SET f=%%f
				SET u=%%u
				
				:: Save the file.
				powershell -noprofile -command "(New-Object Net.WebClient).DownloadFile("$env:u", "$env:f")"
				ECHO Moving to mods folder
				
				:: Move the file.
				MOVE %%f mods
			)
			ECHO.
		)
	)
)

:: Pull a list of mods that we want to delete if they exist. Loop over each line in modlist.txt.
FOR /F "usebackq delims=" %%f IN (`powershell -noprofile -Command "Invoke-WebRequest https://raw.githubusercontent.com/$env:gitusername/sorcer2/master/antimodlist.txt | Select -ExpandProperty "Content""`) DO (
	IF EXIST mods/%%f (
		ECHO %%f is not needed, removing it!
		
		:: Delete the file.
		DEL /f mods\%%f
		
		ECHO.
	)
)

ECHO Update complete!
ECHO.
PAUSE
