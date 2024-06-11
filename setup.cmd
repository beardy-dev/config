@echo on
@echo ">>> adding init script to autorun"
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_EXPAND_SZ /d "%USERPROFILE%\.config\init.cmd" /f
@echo ">>> executing init"
call init.cmd
@echo ">>> linking omp lua script to clink"
mklink /H "%USERPROFILE%/AppData/Local/clink/oh-my-posh.lua" .\oh-my-posh.lua
@echo ">>> setting clink autorun"
call "C:\Program Files (x86)\clink\clink.bat" autorun install
