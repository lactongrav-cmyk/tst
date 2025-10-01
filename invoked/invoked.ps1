# Упрощенный тестовый скрипт
try {
    "УСПЕХ: Скрипт начал выполнение в $(Get-Date)" | Out-File "C:\Users\tarin\Desktop\debug_test.txt" -Encoding UTF8
    "Компьютер: $env:COMPUTERNAME" | Out-File "C:\Users\tarin\Desktop\debug_test.txt" -Append
    "Пользователь: $env:USERNAME" | Out-File "C:\Users\tarin\Desktop\debug_test.txt" -Append
    
    # Пробуем записать в несколько мест
    "Резервная копия" | Out-File "$env:TEMP\debug_temp.txt" -Encoding UTF8
    "Еще одна копия" | Out-File "C:\debug_root.txt" -Encoding UTF8
    
} catch {
    "ОШИБКА: $($_.Exception.Message)" | Out-File "C:\Users\tarin\Desktop\error_log.txt" -Encoding UTF8
}
