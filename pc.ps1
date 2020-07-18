$s=$args[0]
if($s -eq "-r" -or $s -eq "-R"){
    Restart-Computer
}elseif($s -eq "-l" -or $s -eq "-L"){
   C:\Windows\System32\rundll32.exe  powrprof.dll,SetSuspendState Hibernate
}elseif($s -eq "-s" -or $s -eq "-s"){
    Stop-Computer
}

