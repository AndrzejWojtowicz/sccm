# SCCM application creation script

This creates application object inside SCCM:
```
New-CMApplication -name $ApplicationName -Description $ApplicationDescription -AutoInstall $true
```

This creates MSI deployment type for the above appliaction:
```
Add-CMMsiDeploymentType -ApplicationName $ApplicationName -ContentLocation $ContentLocation -InstallationBehaviorType InstallForSystem -Force
```

## Installation


1. Login to SCCM server
2. git clone https://github.com/Yendrek123/sccm
2. Select options menu (blue square on top)
3. Connect via Windows PowerShell
4. run "create SCCM application.ps1"
