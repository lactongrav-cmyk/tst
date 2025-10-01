# Исправленный тестовый скрипт
Write-Host "=== Тестовый payload успешно выполнен! ===" -ForegroundColor Green
$computerName = $env:COMPUTERNAME
$currentTime = Get-Date
$userName = $env:USERNAME

# Записываем файл на рабочий стол
"Тест выполнен на компьютере: $computerName" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt"
"Время выполнения: $currentTime" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append
"Пользователь: $userName" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append
"=== УСПЕХ ===" | Out-File -FilePath "C:\Users\tarin\Desktop\test_report.txt" -Append

# Дублируем в TEMP для надежности
"Backup проверка: $currentTime" | Out-File -FilePath "$env:TEMP\backup_test.txt"

Write-Host "Результат записан в C:\Users\tarin\Desktop\test_report.txt"
Write-Host "Backup файл создан в: $env:TEMP\backup_test.txt"
