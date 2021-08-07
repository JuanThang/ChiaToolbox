# ChiaToolbox
Things for managing your Chia Farm

Backups and Restores - Used to backup the mainnet database in the event of corruption. Backups can be taken whilst the node is running and a scheduled task can also be setup.
Restores can only be done when the node is offline.

Testing Plots - Uses a public function from PSChiaPlotter to scrape data from the Chia plot checker and outputs as a .csv, this then uses ImportExcel to convert the .csv into a .xlsx spreadsheet ready for viewing.

Modules used Test Plots.ps1

PSChiaPlotter

https://github.com/MrPig91/PSChiaPlotter

Function: https://github.com/MrPig91/PSChiaPlotter/blob/main/PSChiaPlotter/Public/Test-ChiaPlot.ps1

ImportExcel

https://github.com/dfinke/ImportExcel
