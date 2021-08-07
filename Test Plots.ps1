if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
{  
  $arguments = "& '" +$myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

function Show-MainMenu
{
	param (
		[string]$MM = 'Main Menu'
	)
	Clear-Host
	Write-Host "================ $MM ================"
	Write-Host "1: Plot Health Check."
	Write-Host "2: Backup."
	Write-Host "3: Schedule Backup."
	Write-Host "4: Restore."
	Write-Host "Q: Press 'Q' to quit."
}

function Show-FOBMenu
{
	param (
		[string]$FOB = 'Frequency of Backup'
	)
	Clear-Host
	Write-Host "================ $FOB ================"
	Write-Host "1: Daily."
	Write-Host "2: Weekly."
	Write-Host "3: Monthly."
	Write-Host "R: Return to the Main Manu."
}

cd $env:USERPROFILE\Desktop

##Function source: https://github.com/MrPig91/PSChiaPlotter/blob/main/PSChiaPlotter/Public/Test-ChiaPlot.ps1##
function Test-ChiaPlot
{
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline)]
        [Alias("FilePath","FullName","Filter")]
        [ValidateNotNullOrEmpty()]
        [string[]]$Path,
        [ALias("n")]
        [int]$Challenges = 30
    )

    Begin{
        $ChiaPath = (Get-Item -Path "$ENV:LOCALAPPDATA\chia-blockchain\app-*\resources\app.asar.unpacked\daemon").FullName
        if ($ENV:Path.Split(";") -notcontains $ChiaPath){
            $ENV:Path += ";$ChiaPath"
        }
        $Proofs = "Proofs ([0-9]*) / ([0-9]*), ([0-9.]*)"
        $Testing = "Testing plot"
        $ErrorString = "ERROR"
    }

    Process{
        foreach ($plotpath in $Path){
            chia.exe plots check -n $Challenges -g $plotpath 2>&1 | Select-String -SimpleMatch "Proofs","Error","Testing" | foreach {
                switch -Regex ($_){
                    $Proofs {
                        $PlotObject.ProofsFound = $Matches[1] -as [int]
                        $PlotObject.Ratio = $Matches[3] -as [double]
                        $PlotObject
                        break
                    }
                    $Testing {
                        $PlotPath = ($_ -split "Testing plot ")[1].split(' ')[0]
                        $Leaf = Split-Path -Path $PlotPath -Leaf
                        $KSize = $Leaf -split "plot-k" -split "-" | Select-Object -First 1 -Skip 1
                        $PlotId = ($Leaf -split "-" | select -Last 1).Split(".")[0]
                        $PlotObject = [PSCustomObject]@{
                            PSTypeName = "PSChiaPlotter.PlotTest"
                            Path = $PlotPath
                            ProofsFound = 0
                            Challenges = $Challenges
                            Ratio = 0.0
                            KSize = $KSize
                            PlotId = $PlotId
                            Errors = New-Object System.Collections.Generic.List[string]
                        }
                        break
                    }
                    $ErrorString {
                        $PlotObject.Errors.Add($_.ToString())
                        break
                    }
                } #switch
            } #foreach line
        } #foreach
    } #process
}

$addToProfile = '
$chiapath = (get-item "$env:LOCALAPPDATA\Chia-Blockchain\app-*\resources\app.asar.unpacked\daemon\").fullname
$env:Path =  $env:Path + "; $chiapath"
'
Add-Content -Path $profile.CurrentUserAllHosts -Value $addToProfile

do
{
	Show-MainMenu
	$selection = Read-Host "Please make a selection"
	switch ($selection)
	{
		'1' {
			Write-Host 'Checking plots may take up to 30s per plot, please be patient whilst this happens in the background'
			$farm = Read-Host -prompt 'Please enter your farm path'
			Test-ChiaPlot -Path $farm | Export-Csv -Path .\plotcheck.csv -NoTypeInformation -Append
			
			Write-Host 'Installing Excel Module'
			Install-Module importexcel
			
			Write-Host 'Converting .csv to .xlsx'
			Import-CSV .\plotcheck.csv | Export-Excel .\plotcheck.xlsx
			
			Add-Type -AssemblyName PresentationCore, PresentationFramework
			$ButtonType = [System.Windows.MessageBoxButton]::YesNo
			$MessageIcon = [System.Windows.MessageBoxImage]::Information
			$MessageBody = "The checking process has finished"
			$MessageTitle = "Completed"
			
			[System.Windows.MessageBox]::Show($MessageBody, $MessageTitle, $ButtonType, $MessageIcon)
			
			Remove-Module PSChiaPlotter
			Remove-Module importexcel
		} '2' {
			Write-Host 'Backing up Chia mainnet database...'
			Copy-Item	"$env:USERPROFILE\.chia\mainnet\db\blockchain_v1_mainnet.sqlite" -Destination "$env:USERPROFILE\.chia\mainnet\db\blockchain_v1_mainnet.sqlite.bak" -PassThru
			write-Host	'Backup complete.'
		} '3' {
			Show-FOBMenu
			$selection = Read-Host "Please make a selection"
			switch ($selection)
			{
				'1' {
					##Daily##
					
				} '2' {
					##Weekly
					
				} '3' {
					##Monthly
					
				} '4' {
					##Return
				}
			}
		} '4' {
			Write-Host '!! Shutdown your Chia node prior to restoring !!'
			Read-host 'Press ENTER to continue...'
			Write-Host 'Restoring Chia mainnet database...'
			Copy-Item	"$env:USERPROFILE\.chia\mainnet\db\blockchain_v1_mainnet.sqlite.bak" -Destination "$env:USERPROFILE\.chia\mainnet\db\blockchain_v1_mainnet.sqlite" -PassThru
			Write-Host; 'Restore complete'
			}
		}
pause
}
until ($selection -eq 'q')
		
	Write-Host "Good Bye"