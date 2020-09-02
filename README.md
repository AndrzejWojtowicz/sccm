# SCCM application creation script

This creates '7zip' application object inside SCCM:
```
New-CMApplication -name '7zip' -Description 'Archiving software' -AutoInstall $true
```

This creates MSI deployment type for t'7zip' appliaction:
```
Add-CMMsiDeploymentType -ApplicationName “7zip” -ContentLocation “\\WFRPARLAB101\DANLAB_Packages$\7zip_1900_x64\7z1900-x64.msi" -InstallationBehaviorType InstallForSystem -Force
```
