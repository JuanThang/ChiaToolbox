#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-CToolbox_GUI_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formCToolbox = New-Object 'System.Windows.Forms.Form'
	$titlelabel = New-Object 'System.Windows.Forms.Label'
	$function4 = New-Object 'System.Windows.Forms.Button'
	$function3 = New-Object 'System.Windows.Forms.Button'
	$function2 = New-Object 'System.Windows.Forms.Button'
	$function1 = New-Object 'System.Windows.Forms.Button'
	$menustrip1 = New-Object 'System.Windows.Forms.MenuStrip'
	$xlsxBrowseFolder = New-Object 'System.Windows.Forms.Button'
	$xlsxboxFolder = New-Object 'System.Windows.Forms.TextBox'
	$labelExportxlsx = New-Object 'System.Windows.Forms.Label'
	$labelExportcsv = New-Object 'System.Windows.Forms.Label'
	$csvBrowseFolder = New-Object 'System.Windows.Forms.Button'
	$csvboxFolder = New-Object 'System.Windows.Forms.TextBox'
	$processtextbox1 = New-Object 'System.Windows.Forms.RichTextBox'
	$imagelistButtonBusyAnimation = New-Object 'System.Windows.Forms.ImageList'
	$timerProcessTracker = New-Object 'System.Windows.Forms.Timer'
	$chiaPlotCheckToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$backupRestoreToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$folderbrowserdialog1 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$folderbrowserdialog2 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formCToolbox.SuspendLayout()
	$menustrip1.SuspendLayout()
	#
	# formCToolbox
	#
	$formCToolbox.Controls.Add($titlelabel)
	$formCToolbox.Controls.Add($function4)
	$formCToolbox.Controls.Add($function3)
	$formCToolbox.Controls.Add($function2)
	$formCToolbox.Controls.Add($function1)
	$formCToolbox.Controls.Add($menustrip1)
	$formCToolbox.Controls.Add($xlsxBrowseFolder)
	$formCToolbox.Controls.Add($xlsxboxFolder)
	$formCToolbox.Controls.Add($labelExportxlsx)
	$formCToolbox.Controls.Add($labelExportcsv)
	$formCToolbox.Controls.Add($csvBrowseFolder)
	$formCToolbox.Controls.Add($csvboxFolder)
	$formCToolbox.Controls.Add($processtextbox1)
	$formCToolbox.AutoScaleDimensions = '6, 13'
	$formCToolbox.AutoScaleMode = 'Font'
	$formCToolbox.ClientSize = '244, 242'
	$formCToolbox.FormBorderStyle = 'FixedToolWindow'
	$formCToolbox.MainMenuStrip = $menustrip1
	$formCToolbox.MaximizeBox = $False
	$formCToolbox.Name = 'formCToolbox'
	$formCToolbox.Text = 'CToolbox'
	$formCToolbox.add_Load($formCToolbox_Load)
	#
	# titlelabel
	#
	$titlelabel.Anchor = 'Top, Bottom'
	$titlelabel.AutoSize = $True
	$titlelabel.Location = '30, 35'
	$titlelabel.Name = 'titlelabel'
	$titlelabel.Size = '51, 17'
	$titlelabel.TabIndex = 15
	$titlelabel.Text = 'Welcome'
	$titlelabel.TextAlign = 'MiddleCenter'
	$titlelabel.UseCompatibleTextRendering = $True
	#
	# function4
	#
	$function4.Location = '125, 89'
	$function4.Name = 'function4'
	$function4.Size = '90, 23'
	$function4.TabIndex = 9
	$function4.Text = 'function4'
	$function4.UseCompatibleTextRendering = $True
	$function4.UseVisualStyleBackColor = $True
	$function4.Visible = $False
	$function4.add_Click($function4_Click)
	#
	# function3
	#
	$function3.Location = '29, 89'
	$function3.Name = 'function3'
	$function3.Size = '90, 23'
	$function3.TabIndex = 8
	$function3.Text = 'function3'
	$function3.UseCompatibleTextRendering = $True
	$function3.UseVisualStyleBackColor = $True
	$function3.Visible = $False
	$function3.add_Click($function3_Click)
	#
	# function2
	#
	$function2.Location = '125, 60'
	$function2.Name = 'function2'
	$function2.Size = '90, 23'
	$function2.TabIndex = 7
	$function2.Text = 'function2'
	$function2.UseCompatibleTextRendering = $True
	$function2.UseVisualStyleBackColor = $True
	$function2.Visible = $False
	$function2.add_Click($function2_Click)
	#
	# function1
	#
	$function1.Location = '29, 60'
	$function1.Name = 'function1'
	$function1.Size = '90, 23'
	$function1.TabIndex = 6
	$function1.Text = 'function1'
	$function1.UseCompatibleTextRendering = $True
	$function1.UseVisualStyleBackColor = $True
	$function1.Visible = $False
	$function1.add_Click($function1_Click)
	#
	# menustrip1
	#
	[void]$menustrip1.Items.Add($chiaPlotCheckToolStripMenuItem)
	[void]$menustrip1.Items.Add($backupRestoreToolStripMenuItem)
	$menustrip1.Location = '0, 0'
	$menustrip1.Name = 'menustrip1'
	$menustrip1.Size = '244, 24'
	$menustrip1.TabIndex = 1
	$menustrip1.Text = 'menustrip1'
	#
	# xlsxBrowseFolder
	#
	$xlsxBrowseFolder.Location = '70, 204'
	$xlsxBrowseFolder.Name = 'xlsxBrowseFolder'
	$xlsxBrowseFolder.Size = '105, 23'
	$xlsxBrowseFolder.TabIndex = 4
	$xlsxBrowseFolder.Text = 'Browse + Export'
	$xlsxBrowseFolder.UseCompatibleTextRendering = $True
	$xlsxBrowseFolder.UseVisualStyleBackColor = $True
	$xlsxBrowseFolder.Visible = $False
	$xlsxBrowseFolder.add_Click($xlsxBrowseFolder_Click)
	#
	# xlsxboxFolder
	#
	$xlsxboxFolder.AutoCompleteMode = 'SuggestAppend'
	$xlsxboxFolder.AutoCompleteSource = 'FileSystemDirectories'
	$xlsxboxFolder.Location = '59, 210'
	$xlsxboxFolder.Name = 'xlsxboxFolder'
	$xlsxboxFolder.Size = '37, 20'
	$xlsxboxFolder.TabIndex = 3
	$xlsxboxFolder.Visible = $False
	#
	# labelExportxlsx
	#
	$labelExportxlsx.AutoSize = $True
	$labelExportxlsx.Location = '90, 184'
	$labelExportxlsx.Name = 'labelExportxlsx'
	$labelExportxlsx.Size = '63, 17'
	$labelExportxlsx.TabIndex = 13
	$labelExportxlsx.Text = 'Export .xlsx'
	$labelExportxlsx.UseCompatibleTextRendering = $True
	$labelExportxlsx.Visible = $False
	#
	# labelExportcsv
	#
	$labelExportcsv.AutoSize = $True
	$labelExportcsv.Location = '93, 138'
	$labelExportcsv.Name = 'labelExportcsv'
	$labelExportcsv.Size = '60, 17'
	$labelExportcsv.TabIndex = 12
	$labelExportcsv.Text = 'Export .csv'
	$labelExportcsv.UseCompatibleTextRendering = $True
	$labelExportcsv.Visible = $False
	#
	# csvBrowseFolder
	#
	$csvBrowseFolder.Location = '70, 158'
	$csvBrowseFolder.Name = 'csvBrowseFolder'
	$csvBrowseFolder.Size = '105, 23'
	$csvBrowseFolder.TabIndex = 4
	$csvBrowseFolder.Text = 'Browse + Export'
	$csvBrowseFolder.UseCompatibleTextRendering = $True
	$csvBrowseFolder.UseVisualStyleBackColor = $True
	$csvBrowseFolder.Visible = $False
	$csvBrowseFolder.add_Click($csvBrowseFolder_Click)
	#
	# csvboxFolder
	#
	$csvboxFolder.AutoCompleteMode = 'SuggestAppend'
	$csvboxFolder.AutoCompleteSource = 'FileSystemDirectories'
	$csvboxFolder.Location = '14, 210'
	$csvboxFolder.Name = 'csvboxFolder'
	$csvboxFolder.Size = '39, 20'
	$csvboxFolder.TabIndex = 3
	$csvboxFolder.Visible = $False
	#
	# processtextbox1
	#
	$processtextbox1.BorderStyle = 'None'
	$processtextbox1.Location = '29, 124'
	$processtextbox1.Name = 'processtextbox1'
	$processtextbox1.Size = '186, 106'
	$processtextbox1.TabIndex = 14
	$processtextbox1.Text = ''
	$processtextbox1.Visible = $False
	#
	# imagelistButtonBusyAnimation
	#
	$Formatter_binaryFomatter = New-Object System.Runtime.Serialization.Formatters.Binary.BinaryFormatter
	#region Binary Data
	$System_IO_MemoryStream = New-Object System.IO.MemoryStream (,[byte[]][System.Convert]::FromBase64String('
AAEAAAD/////AQAAAAAAAAAMAgAAAFdTeXN0ZW0uV2luZG93cy5Gb3JtcywgVmVyc2lvbj00LjAu
MC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI3N2E1YzU2MTkzNGUwODkFAQAA
ACZTeXN0ZW0uV2luZG93cy5Gb3Jtcy5JbWFnZUxpc3RTdHJlYW1lcgEAAAAERGF0YQcCAgAAAAkD
AAAADwMAAAB2CgAAAk1TRnQBSQFMAgEBCAEAATABAAEwAQABEAEAARABAAT/ASEBAAj/AUIBTQE2
BwABNgMAASgDAAFAAwABMAMAAQEBAAEgBgABMP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/
AP8AugADwgH/Az4B/wM+Af8DwgH/MAADwgH/A14B/wOCAf8DwgH/sAADPgH/AwAB/wMAAf8DPgH/
MAADggH/Az4B/wM+Af8DXgH/gAADwgH/Az4B/wM+Af8DwgH/IAADPgH/AwAB/wMAAf8DPgH/A8IB
/wNeAf8DggH/A8IB/xAAA8IB/wM+Af8DPgH/A8IB/wNeAf8DPgH/Az4B/wNeAf8EAAOSAf8DkgH/
A8IB/3AAAz4B/wMAAf8DAAH/Az4B/yAAA8IB/wM+Af8DPgH/A8IB/wOCAf8DPgH/Az4B/wOCAf8Q
AAM+Af8DAAH/AwAB/wM+Af8DwgH/A14B/wOCAf8DwgH/A5IB/wOCAf8DggH/A5IB/3AAAz4B/wMA
Af8DAAH/Az4B/zAAA14B/wM+Af8DPgH/A14B/xAAAz4B/wMAAf8DAAH/Az4B/xAAA5IB/wOSAf8D
kgH/A8IB/3AAA8IB/wM+Af8DPgH/A8IB/zAAA8IB/wNeAf8DggH/A8IB/xAAA8IB/wM+Af8DPgH/
A8IB/xAAA8IB/wOSAf8DkgH/A8IB/zgAA8IB/wM+Af8DPgH/A8IB/zAAA8IB/wOCAf8DXgH/A8IB
/zAAA8IB/wPCAf8DkgH/A8IB/zQAA8IB/wPCAf80AAM+Af8DAAH/AwAB/wM+Af8wAANeAf8DPgH/
Az4B/wNeAf8wAAOSAf8DggH/A4IB/wOSAf8wAAPCAf8DwgH/A8IB/wPCAf8wAAM+Af8DAAH/AwAB
/wM+Af8wAAOCAf8DPgH/Az4B/wOCAf8wAAPCAf8DggH/A5IB/wOSAf8wAAPCAf8DwgH/A8IB/wPC
Af8wAAPCAf8DPgH/Az4B/wPCAf8wAAPCAf8DggH/A14B/wPCAf8wAAPCAf8DkgH/A5IB/wPCAf80
AAPCAf8DwgH/EAADwgH/A8IB/xQAA8IB/wOCAf8DXgH/A8IB/zAAA8IB/wOSAf8DkgH/A8IB/zQA
A8IB/wPCAf9UAAPCAf8DwgH/A8IB/wPCAf8QAANeAf8DPgH/Az4B/wNeAf8wAAOSAf8DggH/A5IB
/wOSAf8wAAPCAf8DwgH/A8IB/wPCAf9QAAPCAf8DwgH/A8IB/wPCAf8DwgH/A8IB/wOSAf8DwgH/
A4IB/wM+Af8DPgH/A4IB/yQAA8IB/wPCAf8EAAPCAf8DggH/A5IB/wOSAf8wAAPCAf8DwgH/A8IB
/wPCAf9UAAPCAf8DwgH/BAADkgH/A4IB/wOCAf8DkgH/A8IB/wOCAf8DXgH/A8IB/yAAA8IB/wPC
Af8DwgH/A8IB/wPCAf8DkgH/A5IB/wPCAf80AAPCAf8DwgH/ZAADkgH/A5IB/wOSAf8DkgH/MAAD
wgH/A8IB/wPCAf8DwgH/sAADwgH/A5IB/wOSAf8DwgH/NAADwgH/A8IB/7QAA8IB/wPCAf8DkgH/
A8IB/zQAA8IB/wPCAf+0AAOSAf8DggH/A4IB/wOSAf8wAAPCAf8DwgH/A8IB/wPCAf+gAAPCAf8D
XgH/A4IB/wPCAf8DkgH/A5IB/wOSAf8DwgH/BAADwgH/A8IB/xQAA8IB/wPCAf8DkgH/A8IB/wPC
Af8DwgH/A8IB/wPCAf8kAAPCAf8DwgH/dAADggH/Az4B/wM+Af8DggH/A8IB/wOSAf8DkgH/A8IB
/wPCAf8DwgH/A8IB/wPCAf8QAAOSAf8DggH/A4IB/wOSAf8EAAPCAf8DwgH/JAADwgH/A8IB/wPC
Af8DwgH/cAADXgH/Az4B/wM+Af8DggH/EAADwgH/A8IB/wPCAf8DwgH/EAADkgH/A5IB/wOSAf8D
kgH/MAADwgH/A8IB/wPCAf8DwgH/cAADwgH/A14B/wNeAf8DwgH/FAADwgH/A8IB/xQAA8IB/wOS
Af8DkgH/A8IB/zQAA8IB/wPCAf9sAAPCAf8DPgH/Az4B/wPCAf8wAAPCAf8DXgH/A4IB/wPCAf8w
AAPCAf8DwgH/A5IB/wPCAf80AAPCAf8DwgH/NAADPgH/AwAB/wMAAf8DPgH/MAADggH/Az4B/wM+
Af8DXgH/MAADkgH/A4IB/wOCAf8DkgH/MAADwgH/A8IB/wPCAf8DwgH/MAADPgH/AwAB/wMAAf8D
PgH/MAADXgH/Az4B/wM+Af8DggH/MAADkgH/A5IB/wOSAf8DkgH/MAADwgH/A8IB/wPCAf8DwgH/
MAADwgH/Az4B/wM+Af8DwgH/MAADwgH/A14B/wNeAf8DwgH/MAADwgH/A5IB/wOSAf8DwgH/NAAD
wgH/A8IB/3wAA8IB/wM+Af8DPgH/A8IB/zAAA8IB/wNeAf8DggH/A8IB/zAAA8IB/wPCAf8DkgH/
A8IB/xAAA8IB/wM+Af8DPgH/A8IB/1AAAz4B/wMAAf8DAAH/Az4B/zAAA4IB/wM+Af8DPgH/A14B
/zAAA5IB/wOCAf8DggH/A5IB/xAAAz4B/wMAAf8DAAH/Az4B/1AAAz4B/wMAAf8DAAH/Az4B/zAA
A14B/wM+Af8DPgH/A4IB/wOSAf8DPgH/Az4B/wPCAf8gAAOSAf8DkgH/A5IB/wOSAf8DwgH/A14B
/wOCAf8DwgH/Az4B/wMAAf8DAAH/Az4B/1AAA8IB/wM+Af8DPgH/A8IB/zAAA8IB/wOCAf8DXgH/
A8IB/wM+Af8DAAH/AwAB/wM+Af8gAAPCAf8DkgH/A5IB/wPCAf8DggH/Az4B/wM+Af8DXgH/A8IB
/wM+Af8DPgH/A8IB/6AAAz4B/wMAAf8DAAH/Az4B/zAAA14B/wM+Af8DPgH/A4IB/7AAA8IB/wM+
Af8DPgH/A8IB/zAAA8IB/wOCAf8DXgH/A8IB/xgAAUIBTQE+BwABPgMAASgDAAFAAwABMAMAAQEB
AAEBBQABgAEBFgAD/4EABP8B/AE/AfwBPwT/AfwBPwH8AT8D/wHDAfwBAwHAASMD/wHDAfwBAwHA
AQMD/wHDAf8DwwP/AcMB/wPDAf8B8AH/AfAB/wHwAf8B+QH/AfAB/wHwAf8B8AH/AfAB/wHwAf8B
8AH/AfAB/wHwAf8B8AH/AfAB/wHwAf8B+QHnAcMB/wHDAf8B5wL/AsMB/wHDAf8BwwL/AcABAwH+
AUMB/wHDAv8B5AEDAfwBAwH/AecC/wH8AT8B/AE/BP8B/AE/Af4BfwT/AfwBPwH+AX8E/wH8AT8B
/AE/BP8BwAEnAcABPwHnA/8BwAEDAcIBfwHDA/8DwwH/AcMD/wHDAecBwwH/AecD/wEPAf8BDwH/
AQ8B/wGfAf8BDwH/AQ8B/wEPAf8BDwH/AQ8B/wEPAf8BDwH/AQ8B/wEPAf8BDwH/AQ8B/wGfA/8B
wwH/AcMB/wLDAv8BwwH/AcMB/wLDAv8BwwH/AcABPwHAAQMC/wHDAf8BwAE/AcABAwT/AfwBPwH8
AT8E/wH8AT8B/AE/Cw=='))
	#endregion
	$imagelistButtonBusyAnimation.ImageStream = $Formatter_binaryFomatter.Deserialize($System_IO_MemoryStream)
	$Formatter_binaryFomatter = $null
	$System_IO_MemoryStream = $null
	$imagelistButtonBusyAnimation.TransparentColor = 'Transparent'
	#
	# timerProcessTracker
	#
	#
	# chiaPlotCheckToolStripMenuItem
	#
	$chiaPlotCheckToolStripMenuItem.Name = 'chiaPlotCheckToolStripMenuItem'
	$chiaPlotCheckToolStripMenuItem.Size = '103, 20'
	$chiaPlotCheckToolStripMenuItem.Text = 'Chia Plot Check'
	$chiaPlotCheckToolStripMenuItem.add_Click($chiaPlotCheckToolStripMenuItem_Click)
	#
	# backupRestoreToolStripMenuItem
	#
	$backupRestoreToolStripMenuItem.Name = 'backupRestoreToolStripMenuItem'
	$backupRestoreToolStripMenuItem.Size = '102, 20'
	$backupRestoreToolStripMenuItem.Text = 'Backup/Restore'
	$backupRestoreToolStripMenuItem.add_Click($backupRestoreToolStripMenuItem_Click)
	#
	# folderbrowserdialog1
	#
	#
	# folderbrowserdialog2
	#
	$menustrip1.ResumeLayout()
	$formCToolbox.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formCToolbox.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formCToolbox.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formCToolbox.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formCToolbox.ShowDialog()

} #End Function

#Call the form
Show-CToolbox_GUI_psf | Out-Null
