@echo off
setlocal ENABLEDELAYEDEXPANSION
set vidx=0
for /F "tokens=*" %%A in (SysOutput.txt) do (
    SET /A vidx=!vidx! + 1
    set var!vidx!=%%A
)
set var

pause;