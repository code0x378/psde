Push-Location $PSScriptRoot

$PackageRoot = $PSScriptRoot

$LoadingModule = $true

dir *.ps1 | % Name | Resolve-Path | Import-Module 

$LoadingModule = $false

Pop-Location

$publicFunctions = Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction Ignore
$privateFunctions = Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction Ignore

foreach( $publicFunction in $publicFunctions ) {
    . $publicFunction.FullName
    Export-ModuleMember -Function $publicFunction.BaseName
}

foreach( $privateFunction in $privateFunctions ) {
    . $privateFunction.FullName
}