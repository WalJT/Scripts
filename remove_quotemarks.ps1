
# A specific use case script to remove quote marks surrounding file names

function Remove-Quotes {
    param ($InputFile)
    
    $OutputFile = $InputFile -replace "'", "" # Replace quotes with nothing
    $outString = "Renamed $InputFile to $OutputFile"

    Rename-Item -Path $InputFile -NewName $OutputFile
    Write-Host $outString

}

$test1 = "'file.text'"

Remove-Quotes $test1

# $test2 = "'Annual Report.xls'"
# $test3 = "'Hitchikers Guide to the Galaxy.pdf'"

# Get-Item .

# Remove-Quotes $test1
# Remove-Quotes $test2
# Remove-Quotes $test3