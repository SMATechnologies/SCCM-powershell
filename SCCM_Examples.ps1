param(
    $modulePath = 'C:\Program Files (x86)\Microsoft Configuration Manager\AdminConsole\bin\ConfigurationManager.psd1'
    ,$locationSite = "SMA"
    ,$deviceName
    ,$collectionName
    ,$severity = "Error"
    ,$viewingPeriod = "2/17/2020 7:00 PM"
    ,$ruleId = 1
	,$option
)

# Loads the ConfigurationManager module and connects to the site
if(Test-Path $modulePath)
{
    Import-Module $modulePath
    Set-Location $locationSite":"
}
else 
{
    Write-Host "Error importing module file"
    Exit 1    
}

if($option -eq "collectionScheduleStart")
{
     # Run this to start the schedule that adds devices to a collection based on pre-defined rules
     Invoke-CMCollectionUpdate -Name "$collectionName"
}
elseif($option -eq "collection")
{
    # Returns information about a collection
    Get-CMCollection | Where-Object{ $_.Name -like "$collectionName" }
}
elseif($option -eq "device")
{
    # Get information about a Device
    Get-CMDevice | Where-Object{ $_.Name -like "$deviceName" }
}
elseif($option -eq "messages")
{
	Get-CMComponentStatusMessage -Severity $severity -ViewingPeriod $viewingPeriod
}
elseif($option -eq "updateRule")
{
    # Returns information about a deployment rule
	Get-CMSoftwareUpdateAutoDeploymentRule -Id $ruleId -Fast
}
elseif($option -eq "updateStart")
{
    # Runs an update deployment rule
	Invoke-CMSoftwareUpdateAutoDeploymentRule -Id $ruleId
}
else 
{
    Write-Host "Invalid or no option specified"
    Exit 2    
}
