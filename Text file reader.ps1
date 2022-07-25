Set-Location <# replace with path to parent directory #>
Write-Output "Scanning contents . . ." `n
Get-ChildItem <# replace with path to parent directory #> | ForEach-Object {
    Write-Output "File address: "
    Write-Output $_.FullName

    Write-Output "File contents: "
    Get-Content $_
    Write-Output `n
}
Read-Host -Prompt "Press Enter to exit" #keeps PS console from automatically closing when finished