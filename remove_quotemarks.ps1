
# A specific use case script to remove quote marks surrounding file names

function Remove-Quotes {
    param ($InputFile)
    
    $OutputFile = $InputFile -replace "'", "" # Replace quotes with nothing
    $outString = "Renamed $InputFile to $OutputFile"

    Rename-Item -Path $InputFile -NewName $OutputFile
    Write-Host $outString

}

$test1 = "'file.xlsx'"

# Get listing of working directory
$files = Get-ChildItem -Name

foreach ($file in $files) {

    if ($file[-1] -eq "'") {
        Remove-Quotes $file
    }
}