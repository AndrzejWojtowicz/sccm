# SCCM application creation script


### Application creation:
[MS documentation](https://docs.microsoft.com/en-us/powershell/module/configurationmanager/new-cmapplication?view=sccm-ps)
This creates application object inside SCCM:
```
New-CMApplication -name $ApplicationName -Description $ApplicationDescription -AutoInstall $true
```


#### DeploymentType: MSI
[MS documentation](https://docs.microsoft.com/en-us/powershell/module/configurationmanager/add-cmmsideploymenttype?view=sccm-ps)
This adds MSI deployment for existing application, detection and most things are handled directly by SCCM - new type of deployment:
```
Add-CMMsiDeploymentType -ApplicationName $ApplicationName -ContentLocation $ContentLocation -InstallationBehaviorType InstallForSystem -Force
```

#### DeploymentType: ScriptInstaller
[MS documentation](https://docs.microsoft.com/en-us/powershell/module/configurationmanager/add-cmscriptdeploymenttype?view=sccm-ps)
This adds Script deployment for existing application, this should work with our existing solution, creation process is similar to Altiris:
```
Add-CMScriptDeploymentType -ApplicationName $ApplicationName" -DeploymentTypeName "AppDeployToolkit" -InstallCommand 'Deploy-Application.ps'
```

## Installation

2. git clone https://github.com/Yendrek123/sccm to your local machine (or directly to the SCCM server if Git is installed)
1. Login to SCCM server
3. Select options menu (blue square on top)
4. Connect via Windows PowerShell
5. run "create SCCM application.ps1" from SCCM PowerShell console

