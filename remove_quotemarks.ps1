
<#
A specific use case script to remove quote marks surrounding file names

1. [x] Write a function that removes surrounding quotemarks from a string
2. [ ] Appy this to renaming files
3. [ ] Use this function to loop through multiple file names
4. [ ] Get list as input and filter to only files that have quotemarks at the end of the extension

#>

function Remove-Quotes {
    param (
        $InputFile
    )
    
    $OutputFile = $InputFile -replace "'", ""

    Write-Host $InputFile
    Write-Host $OutputFile
}

$test1 = "'file.xlsx'"
$test2 = "'Annual Report.xls'"
$test3 = "'Hitchikers Guiede to the Galaxy.pdf'"

Remove-Quotes $test1
Remove-Quotes $test2
Remove-Quotes $test3