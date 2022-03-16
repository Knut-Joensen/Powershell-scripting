@echo off

>SNOutput.txt (


wmic bios get serialnumber

)
>SysOutput.txt (

systeminfo

)




echo done!

pause;

call sys.cmd

echo System Done!

pause;

call SN.cmd

echo SN Done!

pause;