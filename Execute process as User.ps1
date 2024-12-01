Copy-Item "$($PSScriptRoot)\task.ps1" -Destination "C:\COMPANY"
Execute-ProcessAsUser -Path "$PSHOME\powershell.exe" -Parameters "-Command & { & "C:\COMPANY\task.ps1"; Exit $LastExitCode }" -Wait
Remove-File -path 'C:\COMPANY\task.ps1'