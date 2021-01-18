function tools
{
    if ($python)
    {
        $pythonPath = "$sdkPath\python\$python"
        $env:Path = $pythonPath + ";" + $env:Path
        Get-Command python
    }
}