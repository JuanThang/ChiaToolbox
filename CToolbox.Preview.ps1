#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-CToolbox_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$form1 = New-Object 'System.Windows.Forms.Form'
	$refreshplots = New-Object 'System.Windows.Forms.Button'
	$listbox1 = New-Object 'System.Windows.Forms.ListBox'
	$menustripTheme = New-Object 'System.Windows.Forms.MenuStrip'
	$themeToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$darkToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$lightToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$form1.SuspendLayout()
	$menustripTheme.SuspendLayout()
	#
	# form1
	#
	$form1.Controls.Add($refreshplots)
	$form1.Controls.Add($listbox1)
	$form1.Controls.Add($menustripTheme)
	$form1.AutoScaleDimensions = New-Object System.Drawing.SizeF(6, 13)
	$form1.AutoScaleMode = 'Font'
	$form1.ClientSize = New-Object System.Drawing.Size(712, 429)
	$form1.Name = 'form1'
	$form1.StartPosition = 'CenterScreen'
	$form1.Text = 'Form'
	$form1.add_Load($form1_Load)
	#
	# refreshplots
	#
	$refreshplots.Location = New-Object System.Drawing.Point(612, 215)
	$refreshplots.Name = 'refreshplots'
	$refreshplots.Size = New-Object System.Drawing.Size(88, 23)
	$refreshplots.TabIndex = 16
	$refreshplots.Text = 'Refresh Plots'
	$refreshplots.UseVisualStyleBackColor = $True
	$refreshplots.add_Click($refreshplots_Click)
	#
	# listbox1
	#
	$listbox1.FormattingEnabled = $True
	$listbox1.Location = New-Object System.Drawing.Point(12, 244)
	$listbox1.Name = 'listbox1'
	$listbox1.Size = New-Object System.Drawing.Size(688, 173)
	$listbox1.TabIndex = 15
	$listbox1.add_SelectedIndexChanged($listbox1_SelectedIndexChanged)
	#
	# menustripTheme
	#
	$menustripTheme.ImageScalingSize = New-Object System.Drawing.Size(20, 20)
	[void]$menustripTheme.Items.Add($themeToolStripMenuItem)
	$menustripTheme.Location = New-Object System.Drawing.Point(0, 0)
	$menustripTheme.Name = 'menustripTheme'
	$menustripTheme.Padding = '5, 2, 0, 2'
	$menustripTheme.ShowItemToolTips = $True
	$menustripTheme.Size = New-Object System.Drawing.Size(712, 28)
	$menustripTheme.TabIndex = 14
	$menustripTheme.Text = 'menustrip1'
	#
	# themeToolStripMenuItem
	#
	$themeToolStripMenuItem.Alignment = 'Right'
	[void]$themeToolStripMenuItem.DropDownItems.Add($darkToolStripMenuItem)
	[void]$themeToolStripMenuItem.DropDownItems.Add($lightToolStripMenuItem)
	#region Binary Data
	$Formatter_binaryFomatter = New-Object System.Runtime.Serialization.Formatters.Binary.BinaryFormatter
	$System_IO_MemoryStream = New-Object System.IO.MemoryStream (,[byte[]][System.Convert]::FromBase64String('
AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj00LjAuMC4wLCBD
dWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0
ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAALAEAAAKJUE5HDQoaCgAA
AA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA68AAAOvAGV
vHJJAAAAGHRFWHRTb2Z0d2FyZQBwYWludC5uZXQgNC4xLjVkR1hSAAAAqklEQVQ4T2P4//8/RRhC
oAH7qm0T7So2/wDi/1D8zb5qaz9UGg4wDLCr3OqKpAkXtoMqRzUAqNkZi2IceIs1pgFYFeLGKAY4
1OzqxaYIHwaGUwfcACDnOzZFBPA7ZAOwKSCIqWoAZV5wqN3dj0UBXmxfvR0RiBRHIwgATSQ+IVVu
xUxIIECUIZVbbaHKMQ2AAYfaXROBAfsDFDtQ/B2U2KDScAA3gHz8nwEAonU00JrpvTMAAAAASUVO
RK5CYIIL'))
	#endregion
	$themeToolStripMenuItem.Image = $Formatter_binaryFomatter.Deserialize($System_IO_MemoryStream)
	$Formatter_binaryFomatter = $null
	$System_IO_MemoryStream = $null
	$themeToolStripMenuItem.Name = 'themeToolStripMenuItem'
	$themeToolStripMenuItem.Size = New-Object System.Drawing.Size(32, 24)
	$themeToolStripMenuItem.ToolTipText = 'Theme'
	#
	# darkToolStripMenuItem
	#
	$darkToolStripMenuItem.Name = 'darkToolStripMenuItem'
	$darkToolStripMenuItem.Size = New-Object System.Drawing.Size(152, 22)
	$darkToolStripMenuItem.Text = 'Dark'
	$darkToolStripMenuItem.add_Click($darkToolStripMenuItem_Click)
	#
	# lightToolStripMenuItem
	#
	$lightToolStripMenuItem.Name = 'lightToolStripMenuItem'
	$lightToolStripMenuItem.Size = New-Object System.Drawing.Size(152, 22)
	$lightToolStripMenuItem.Text = 'Light'
	$lightToolStripMenuItem.add_Click($lightToolStripMenuItem_Click)
	$menustripTheme.ResumeLayout()
	$form1.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $form1.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$form1.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$form1.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $form1.ShowDialog()

} #End Function

#Call the form
Show-CToolbox_psf | Out-Null
