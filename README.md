# ChiaToolbox
Things for managing your Chia Farm

Chia DB Backup.ps1

Used to backup the mainnet database in the event of corruption. Backups can be taken whilst the node is running and a scheduled task can also be setup.
Restores can only be done when the node is offline.


Test Plots.ps1

Uses a public function from PSChiaPlotter to scrape data from the Chia plot checker and outputs as a .csv, this then uses ImportExcel to convert the .csv into a .xlsx spreadsheet ready for viewing.

Modules used Test Plots.ps1

PSChiaPlotter

https://github.com/MrPig91/PSChiaPlotter

Script: https://github.com/MrPig91/PSChiaPlotter/blob/main/PSChiaPlotter/Public/Test-ChiaPlot.ps1

ImportExcel

https://github.com/dfinke/ImportExcel
