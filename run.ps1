$all_num = @()
for ($a = 0; $a -le 9; $a++) {
    for ($b = 0; $b -le 9; $b++) {
        for ($c = 0; $c -le 9; $c++) {
            for ($d = 0; $d -le 9; $d++) {
                $all_num += "$a$b$c$d"
            }
        }
    }
}



for ($index = 0; $index -le 9999; $index++) {
    $num = $all_num[$index]
    Write-Output $num
    adb shell input text $num
    adb shell input keyevent 66
    adb shell input keyevent 66 # 模拟enter
    Start-Sleep 1 #频率
}