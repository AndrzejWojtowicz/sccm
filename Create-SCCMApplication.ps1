$ApplicationName = "Dymo"
$ApplicationDescription = "Printer drivers"
$ContentLocation = "\\WFRPARLAB101\DANLAB_Packages$\Dymo"
$EstimatedRuntimeMins = "90"
$MaximumRuntimeMins = "120"
$InstallationBehaviorType = "InstallForSystem"
$LogonRequirementType = "WhetherOrNotUserLoggedOn"
$UserInteractionMode = "Hidden"

# create new application in SCCM
New-CMApplication `
    -name $ApplicationName `
    -Description $ApplicationDescription `
    -AutoInstall $true

# add Script deployment type
Add-CMScriptDeploymentType `
    -ApplicationName $ApplicationName `
    -DeploymentTypeName "AppDeployToolkit" `
    -ContentLocation $ContentLocation `
    -InstallCommand "$ContentLocation\Deploy-application.exe" `
    -UninstallCommand "$ContentLocation\Deploy-Application.exe -DeploymentType Uninstall" `
    -ScriptLanguage PowerShell `
    -ScriptFile "$ContentLocation\Deploy-application.ps1" `
    -Comment "Generated SCCM script" `
    -EstimatedRuntimeMins $EstimatedRuntimeMins `
    -MaximumRuntimeMins $MaximumRuntimeMins `
    -InstallationBehaviorType $InstallationBehaviorType `
    -LogonRequirementType $LogonRequirementType `
    -UserInteractionMode $UserInteractionMode `
    -CacheContent `
    -ContentFallback `
    #-AddDetectionClause $DetectionClauses `
