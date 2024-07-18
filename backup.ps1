
# Todo:
# 5. Use 7zip CLI
# 4. GUI with file pickers?


$sourceFolder = Read-Host "Enter folder to back up: "
$destinationFolder = Read-Host "Enter folder to store backup archive: "
$archiveBaseName = Read-Host "Enter a name for the archive: "
$today = Get-Date -Format "yyyy-MM-dd"
$archiveFile = $destinationFolder + $archiveBaseName + "_" + $today + ".zip"

Compress-Archive -Path $sourceFolder -DestinationPath $archiveFile