# SCCM application creation script

This creates application object inside SCCM:
```
New-CMApplication -name $ApplicationName -Description $ApplicationDescription -AutoInstall $true
```

This creates MSI deployment type for the above appliaction:
```
Add-CMMsiDeploymentType -ApplicationName $ApplicationName -ContentLocation $ContentLocation -InstallationBehaviorType InstallForSystem -Force
```

