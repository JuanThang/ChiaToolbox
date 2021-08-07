			Write-Host 'Installing Excel Module'
			Install-Module importexcel
Import-Excel -Path R:\plotcheck.xlsx | Out-GridView
