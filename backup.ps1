
# Todo:
# 1. Get input for source folder
# 2. Get input for destination path (not archive name)
# 3. Get input for root of file name + append date
# 4. GUI with file pickers?


$sourceFolder = Read-Host "Enter folder to back up: "
$destinationFolder = Read-Host "Enter folder to store backup archive: "
$archiveBaseName = Read-Host "Enter a name for the archive: "
$today = Get-Date -Format "yyyy-MM-dd"
$archiveFile = $destinationFolder + $archiveBaseName + "_" + $today + ".zip"

Compress-Archive -Path $sourceFolder -DestinationPath $archiveFile