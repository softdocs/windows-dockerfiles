$hasRunPath = "C:/setupDone"
Start-Sleep -Seconds 40

if ( -not (Test-Path $hasRunPath)) {
    Write-Host "Setting up ADMIN and BASE Users"
    ./rabbitmqctl.bat add_user $env:BASE_USERNAME $env:BASE_PASSWORD  
    ./rabbitmqctl.bat change_password admin $env:ADMIN_PASSWORD
    ./rabbitmqctl.bat set_permissions -p / $env:BASE_USERNAME .* .* .*
    Write-Output $null >> $hasRunPath;
}
