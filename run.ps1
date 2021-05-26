for ($index = 0; $index -le 9999; $index++) {
    Write-Output $index
    adb shell input text $index
    adb shell input keyevent 66
    adb shell input keyevent 66 # 模拟enter
    Start-Sleep 1 #频率
}