ECHO OFF
ECHO Checking for all changes made through these updates so far...

IF EXIST "unzip.exe" (
    ECHO Info-Zip is already installed!
) ELSE (
    ECHO Info-Zip is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1DdxfR1i6vmTHMYD8qI6bXkJEOy4v7JWN', 'unzip.exe')"
)
    
IF EXIST "mods/OpenComputers-MC1.7.10-1.7.5.1290-universal.jar" (
    ECHO OpenComputers is already installed!
) ELSE (
    ECHO OpenComputers is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1KKxN71Qutja_ArIcm8YRvj7QY7uu-6hL', 'OpenComputers-MC1.7.10-1.7.5.1290-universal.jar')"
    ECHO Moving to mods folder...
    move OpenComputers-MC1.7.10-1.7.5.1290-universal.jar mods
)

IF EXIST "mods/AdvancedRocketry-1.7.10-1.0.19b.jar" (
    ECHO Advanced Rocketry is already installed!
) ELSE (
    ECHO Advanced Rocketry is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1fJ2Ya71dXXk2VJ5trp3R2Bni0uJ_TsA6', 'AdvancedRocketry-1.7.10-1.0.19b.jar')"
    ECHO Moving to mods folder...
    move AdvancedRocketry-1.7.10-1.0.19b.jar mods
)

IF EXIST "mods/LibVulpes-1.7.10-0.1.19-universal.jar" (
    ECHO LibVulpes is already installed!
) ELSE (
    ECHO LibVulpes is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1UPtO7hE2VB50hDKY85zlJiA2cIzObp_8', 'LibVulpes-1.7.10-0.1.19-universal.jar')"
    ECHO Moving to mods folder...
    move LibVulpes-1.7.10-0.1.19-universal.jar mods
)

IF EXIST "mods/Computronics-1.7.10-1.6.6.jar" (
    ECHO Computronics is already installed!
) ELSE (
    ECHO Computronics is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1Bu4S-4hATgaasIUvYJ9eRbWFkG2Fo_QX', 'Computronics-1.7.10-1.6.6.jar')"
    ECHO Moving to mods folder...
    move Computronics-1.7.10-1.6.6.jar mods
)

IF EXIST "mods/OpenSecurity-1.7.10-1.0-117.jar" (
    ECHO OpenSecurity is already installed!
) ELSE (
    ECHO OpenSecurity is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=19c0BnFsWwXbO7kOez1DC0iggtw6iT4Zd', 'OpenSecurity-1.7.10-1.0-117.jar')"
    ECHO Moving to mods folder...
    move OpenSecurity-1.7.10-1.0-117.jar mods
)

IF EXIST "mods/AsieLib-1.7.10-0.4.9.jar" (
    ECHO AsieLib is already installed!
) ELSE (
    ECHO AsieLib is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1KyjvTGnZuYYXoQXD8qN2nMoTh84kWOaZ', 'AsieLib-1.7.10-0.4.9.jar')"
    ECHO Moving to mods folder...
    move AsieLib-1.7.10-0.4.9.jar mods
)

IF EXIST "mods/Flamingo-1.7.10-1.3.jar" (
    ECHO Flamingo is already installed!
) ELSE (
    ECHO Flamingo is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=17NRL5pY2jAAFfKViZvLwNizOuzW2BRxr', 'Flamingo-1.7.10-1.3.jar')"
    ECHO Moving to mods folder...
    move Flamingo-1.7.10-1.3.jar mods
)

IF EXIST "mods/OpenPeripheral-1.7.10-AIO-8.jar" (
    ECHO OpenPeripheral is already installed!
) ELSE (
    ECHO OpenPeripheral is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1CEo46uRj1S043kk2Z_HwLI0Em_oedKzd', 'OpenPeripheral-1.7.10-AIO-8.jar')"
    ECHO Moving to mods folder...
    move OpenPeripheral-1.7.10-AIO-8.jar mods
)

IF EXIST "mods/OpenBlocks-1.7.10-1.6.jar" (
    ECHO OpenBlocks is already installed!
) ELSE (
    ECHO OpenBlocks is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1at6ZKy8KzbhVq7RCBLJyyADqRd9sq9It', 'OpenBlocks-1.7.10-1.6.jar')"
    ECHO Moving to mods folder...
    move OpenBlocks-1.7.10-1.6.jar mods
)

IF EXIST "mods/OpenModsLib-1.7.10-0.10.1.jar" (
    ECHO OpenModsLib is already installed!
) ELSE (
    ECHO OpenModsLib is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1IiybIYrHwu1Tfptbjc4Jq4fo5sR2FWf1', 'OpenModsLib-1.7.10-0.10.1.jar')"
    ECHO Moving to mods folder...
    move OpenModsLib-1.7.10-0.10.1.jar mods
)

IF EXIST "mods/rftools-4.13.jar" (
    ECHO RFTools is outdated! Updating...
    del "mods/rftools-4.13.jar"
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=19HXnjz1DUwue81rbjlMXE7A10F0UTk8E', 'rftools-4.23.jar')"
)

IF EXIST "mods/MowziesMobs-1.2.99.jar" (
    ECHO Mowzie's Mobs is already installed!
) ELSE (
    ECHO Mowzie's Mobs is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1DFUoc7hrM1P7TD3c5RHknkGDpBpRH2dG', 'MowziesMobs-1.2.99.jar')"
    ECHO Moving to mods folder...
    move MowziesMobs-1.2.99.jar mods
)

IF EXIST "mods/GrimoireOfGaia3-1.7.10-1.2.7.jar" (
    ECHO Grimoire of Gaia is already installed!
) ELSE (
    ECHO Grimoire of Gaia is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1XLXfx_5z-ekpPEOtvPDzKeBUPEkn4PdL', 'GrimoireOfGaia3-1.7.10-1.2.7.jar')"
    ECHO Moving to mods folder...
    move GrimoireOfGaia3-1.7.10-1.2.7.jar mods
)

IF EXIST "mods/primitivemobs-1.0c-1.7.10.jar" (
    ECHO Primitive Mobs is already installed!
) ELSE (
    ECHO Primitive Mobs is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1cQ8smmBHvTQpXLxSqFyZqu2jU-Lr6_aM', 'primitivemobs-1.0c-1.7.10.jar')"
    ECHO Moving to mods folder...
    move primitivemobs-1.0c-1.7.10.jar mods
)

IF EXIST "mods/llibrary-1.5.1-1.7.10.jar" (
    ECHO LLibrary is already installed!
) ELSE (
    ECHO LLibrary is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1wRNolMtk8oEWjMBBPv0gqCVYSCYD9Tcm', 'llibrary-1.5.1-1.7.10.jar')"
    ECHO Moving to mods folder...
    move llibrary-1.5.1-1.7.10.jar mods
)

IF EXIST "mods/witchery-1.7.10-0.24.1.jar" (
    ECHO Witchery is already installed!
) ELSE (
    ECHO Witchery is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1yYsULJOzH2mu9UM5PzmDppIPbCdaw711', 'witchery-1.7.10-0.24.1.jar')"
    ECHO Moving to mods folder...
    move witchery-1.7.10-0.24.1.jar mods
)

IF EXIST "mods/ThaumicHorizons-1.1.6.4.jar" (
    ECHO Thaumic Horizons is already up to date!
) ELSE (
    ECHO Thaumic Horizons is not up to date! Updating...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1LtEQwNQdbIcJbSysMDPXeLQmk5QLbqp3', 'ThaumicHorizons-1.1.6.4.jar')"
    ECHO Moving to mods folder...
    move ThaumicHorizons-1.1.6.4.jar mods
)

IF EXIST "mods/LycanitesMobsComplete1.13.0.5.jar" (
    ECHO Lycanites Mobs is already installed!
) ELSE (
    ECHO Lycanites Mobs is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=16guFVEgtTjzfGL2a1zNHdmAPx8E10jkJ', 'LycanitesMobsComplete1.13.0.5.jar')"
    ECHO Moving to mods folder...
    move LycanitesMobsComplete1.13.0.5.jar mods
)

IF EXIST "mods/Atum-1.7.10-0.6.77.jar" (
    ECHO Atum is already installed!
) ELSE (
    ECHO Atum is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1TFmyLB9ZoA06N7Ae-nIaLshdmcA7lo70', 'Atum-1.7.10-0.6.77.jar')"
    ECHO Moving to mods folder...
    move Atum-1.7.10-0.6.77.jar mods
)

IF EXIST "mods/aether-1.7.10-v1.1.2.1.jar" (
    ECHO Aether is already installed!
) ELSE (
    ECHO Aether is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1S2DSiFPvBCK0UdKB78YtqIpeRmsAaoeb', 'aether-1.7.10-v1.1.2.1.jar')"
    ECHO Moving to mods folder...
    move aether-1.7.10-v1.1.2.1.jar mods
)

IF EXIST "mods/tropicraft-6.0.5.jar" (
    ECHO Tropicraft is already installed!
) ELSE (
    ECHO Tropicraft is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1rKb_vsHqubx2k7Iu8YOVt4uAJNlEEXXP', 'coroutil-1.1.3_for_MC_v1.7.10.jar')"
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1qO0W9MmmoB_fKz4dSThn9mPuTXsKT6zu', 'tropicraft-6.0.5.jar')"
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1imUJFA27W6L84M31A7HxiwpsEroj-wjO', 'koavillage.schematic')"
    ECHO Moving to mods folder...
    move coroutil-1.1.3_for_MC_v1.7.10.jar mods
    move tropicraft-6.0.5.jar mods
    mkdir TCSchematics
    move koavillage.schematic TCSchematics
)

IF EXIST "mods/ArchimedesShips-1.7.1.jar" (
    ECHO Archemedes Ships is already installed!
) ELSE (
    ECHO Archemedes Ships is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1O3InjKepvIWK3XSsl3LidZn1AiXzlmb8', 'ArchimedesShips-1.7.1.jar')"
    ECHO Moving to mods folder...
    move ArchimedesShips-1.7.1.jar mods
)

IF EXIST "mods/Electroblobs-Wizardry.jar" (
    ECHO Electroblob's Wizardry is already installed!
) ELSE (
    ECHO Electroblob's Wizardry is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1TCawui-sD8BRjHZYm_mTKxH46tEtT9sP', 'Electroblobs-Wizardry.jar')"
    ECHO Moving to mods folder...
    move Electroblobs-Wizardry.jar mods
)

IF EXIST "config/Reika/DragonAPI.cfg" (
    ECHO The junk from September 9th is here, thank god!
) ELSE (
    ECHO The junk I added on September 9th is missing! Downloading... Also after this, don't forget to update your Forge client from 1558 to 1614!
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=10r0WJ6u-fZ-MZj_RfnltUwXok_IsI5oz', 'modjunk.zip')"
    ECHO Extracting... 
    unzip modjunk.zip
)

IF EXIST "mods/OpenGlasses-1.0.46.jar" (
    ECHO OpenGlasses is already installed!
) ELSE (
    ECHO OpenGlasses is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1aFztD2ji60blAQ7VTm9OjL-kM2MXxTvV', 'OpenGlasses-1.0.46.jar')"
    ECHO Moving to mods folder...
    move OpenGlasses-1.0.46.jar mods
)

IF EXIST "mods/Carpentersblocks.jar" (
    ECHO Carpenter's Blocks is already installed!
) ELSE (
    ECHO Carpenter's Blocks is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=17g6au2R619ofVecWUYNbKXFCdCNB6Oir', 'Carpentersblocks.jar')"
    ECHO Moving to mods folder...
    move Carpentersblocks.jar mods
)


IF EXIST "mods/fossilsarcheology-7.3.2.jar" (
    ECHO Fossils and Archeology is already installed!
) ELSE (
    ECHO Fossils and Archeology is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1uzlOlnyPagBsTBIlOkNWmXlHcqXOCNNq', 'fossilsarcheology-7.3.2.jar')"
    ECHO Moving to mods folder...
    move fossilsarcheology-7.3.2.jar mods
)

IF EXIST "config/fossil.cfg" (
    ECHO fossil.cfg is already installed!
) ELSE (
    ECHO fossil.cfg is not installed! Downloading...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1rmfi5f2kpFGYH0815X6BKEuUD3gfrA17', 'fossil.cfg')"
    ECHO Moving to mods folder...
    move fossil.cfg config
)


IF EXIST "mods/ThaumicHorizons-1.1.6.jar" (
    del "mods/ThaumicHorizons-1.1.6.jar"
    )
IF EXIST "mods/ThaumicHorizons-1.1.6.3.jar" (
    del "mods/ThaumicHorizons-1.1.6.3.jar"
    )

IF EXIST "mods/Animals-Plus-Mod-1.7.10.jar" (
    ECHO Animals Plus is shouldn't be there!
    del "mods/Animals-Plus-Mod-1.7.10.jar"
    )

IF EXIST "mods/SpiceOfLife-mc1.7.10-1.3.11.jar" (
    ECHO Spice of Life shouldn't be there!
    del "mods/SpiceOfLife-mc1.7.10-1.3.11.jar"
    )
    
IF EXIST "mods/aether-1.7.10-v1.1.0.jar" (
    cd mods
    del "aether-1.7.10-v1.1.0.jar"
    cd ..
    cd config/aether
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1R3zVMxMhwzqj696SDjzdlTn_x4b1vPx6', 'AetherI.cfg')"
    )
    
ECHO Update complete! 
pause
