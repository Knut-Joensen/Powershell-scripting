if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Write-Host "Teldan eitur '$Name'"
$Confirm = Read-Host "Fyribils"
$Confirm | 
ForEach-Object {
switch -wildcard ($confirm) {


    #Pc Rename
     "*1*"{$Name = Hostname
        Write-Host "Teldan eitur '$Name'"
        
        $ComputerName = Read-Host "Hvat skal teldan eita?"
        
        Rename-Computer -NewName $ComputerName
        
        $Confirm2 = Read-Host "Vilt tu restarta telduna? (Y/N)"   
        
        if ($confirm2 -eq 'y') {
        
            Restart-Computer
        }
    } 
    

                #Add Domain
    "*2*"{$ComputerName = hostname
    
        $DomainName = Read-Host "Hvat domain skalt tu bruka?"
        
        lusrmgr.msc

        Add-Computer -ComputerName $ComputerName -DomainName $DomainName

        $Confirm3 = Read-Host "Vilt tu restarta telduna? (Y/N)"   
        
        if ($confirm3 -eq 'y') {
        
            Restart-Computer
        }
    } 


}
}