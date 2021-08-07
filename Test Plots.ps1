if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
{  
  $arguments = "& '" +$myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

cd $env:USERPROFILE\Desktop

Write-Host 'Installing PSChiaPlotter'
#Source#
#https://github.com/MrPig91/PSChiaPlotter#
Install-Module -Repository PSGallery -Name PSChiaPlotter -Scope CurrentUser

Write-Host 'Updating'
Update-Module PSChiaPlotter
$addToProfile = '
$chiapath = (get-item "$env:LOCALAPPDATA\Chia-Blockchain\app-*\resources\app.asar.unpacked\daemon\").fullname
$env:Path =  $env:Path + "; $chiapath"
'
Add-Content -Path $profile.CurrentUserAllHosts -Value $addToProfile

Write-Host 'Checking plots may take up to 30s per plot, please be patient whilst this happens in the background'
$farm = Read-Host -prompt 'Please enter your farm path'
Test-ChiaPlot -Path $farm | Export-Csv -Path .\plotcheck.csv -NoTypeInformation -Append

Write-Host 'Installing Excel Module'
Install-Module importexcel -Scope CurrentUser

Write-Host 'Converting .csv to .xlsx'
Import-CSV .\plotcheck.csv | Export-Excel .\plotcheck.xlsx

Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Information
$MessageBody = "The checking process has finished"
$MessageTitle = "Completed"

[System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)

Remove-Module PSChiaPlotter
Remove-Module importexcel
 
Write-Host "Good Bye"