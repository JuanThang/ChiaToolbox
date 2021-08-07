Write-Host 'Installing Excel Module'
Install-Module importexcel
$Path = "D:\Redstone\plotcheck.xlsx"
Import-Excel -Path $Path | Out-GridView
