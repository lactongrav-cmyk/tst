Write-Host "=== Тестовый payload успешно выполнен! ===" -ForegroundColor Green
$computerName = $env:COMPUTERNAME
$currentTime = Get-Date
"Тест выполнен на компьютере: $computerName в $currentTime" | Out-File -FilePath "$env:TEMP\test_report.txt"
Write-Host "Результат записан в $env:TEMP\test_report.txt"
