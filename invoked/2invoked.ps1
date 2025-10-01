try {
    $computerName = $env:COMPUTERNAME
    $currentTime = Get-Date
    $userName = $env:USERNAME


    "Test completed on computer: $computerName" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt"
    "Execution time: $currentTime" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append
    "User: $userName" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append
    "=== SUCCESS ===" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append

   
    "Backup check: $currentTime" | Out-File -FilePath "$env:TEMP\backup_test.txt"

    
    Write-Host "SUCCESS: Files created successfully"
}
catch {
    "ERROR: $($_.Exception.Message)" | Out-File "C:\Users\tarin\Desktop\error_log.txt"
}
