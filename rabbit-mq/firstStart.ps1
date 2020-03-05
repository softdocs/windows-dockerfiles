$hasRunPath = "C:/setupDone"
$i=0
do{
    Start-Sleep -Seconds 20
    if ( -not (Test-Path $hasRunPath)) {
        Write-Host "Setting up ADMIN and BASE Users"
        try{
            ./rabbitmqctl.bat add_user $env:BASE_USERNAME $env:BASE_PASSWORD  
            ./rabbitmqctl.bat change_password admin $env:ADMIN_PASSWORD
            ./rabbitmqctl.bat set_permissions -p / $env:BASE_USERNAME .* .* .*
        }catch{}
    }
    $i++
}while($i -lt 10)

Write-Output $null >> $hasRunPath;
