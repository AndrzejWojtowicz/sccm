$ApplicationName = '7zip'
$ApplicationDescription = 'Archiving software'
$ContentLocation = '\\WFRPARLAB101\DANLAB_Packages$\7zip_1900_x64\7z1900-x64.msi'

New-CMApplication -name $ApplicationName -Description $ApplicationDescription -AutoInstall $true

Add-CMMsiDeploymentType -ApplicationName $ApplicationName -ContentLocation $ContentLocation -InstallationBehaviorType InstallForSystem -Force