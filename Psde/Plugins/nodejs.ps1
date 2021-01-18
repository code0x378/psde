function tools
{
    if ($nodejs)
    {
        $nodePath = "$sdkPath\nodejs\$nodejs"
        $env:Path = $nodePath + ";" + $env:Path
        # npm config set python $pythonPath
        Get-Command node
    }

}