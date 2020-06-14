function Show-Menu
{
     param (
           [string]$Title = 'Cria Vms'
     )
     cls
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' Cria VMs"
     Write-Host "2: Press '2' Delete todo Resource Group"
     Write-Host "Q: Press 'Q' to quit."
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls
                C:\scripts\createvm.ps1
           } '2' {
                cls
                C:\scripts\deleterg.ps1
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')