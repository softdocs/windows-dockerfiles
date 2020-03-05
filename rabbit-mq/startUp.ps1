$ScriptPath = Resolve-path .\firstStart.ps1
start-process -FilePath powershell.exe -ArgumentList "-file `"$($ScriptPath.path)`""
Invoke-Expression -Command ".\rabbitmq-server.bat"