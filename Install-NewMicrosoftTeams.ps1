# This script may need to be ran as admin depending on your environment's setup
$BootstrapperPath = "$env:TEMP/bootstrapper.exe"
$MSIXPath = "$env:TEMP/MSTMSIX.msix"

Invoke-RestMethod 'https://go.microsoft.com/fwlink/?linkid=2243204&clcid=0x409' -OutFile $BootstrapperPath
Invoke-RestMethod 'https://go.microsoft.com/fwlink/?linkid=2196106' -OutFile $MSIXPath

& $BootstrapperPath -p -o $MSIXPath
