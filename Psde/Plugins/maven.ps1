function tools
{
    if ($maven)
    {
        $mavenPath = "$sdkPath\maven\$maven"
        $env:Path = $mavenPath + "\bin;" + $env:Path
        Get-Command mvn
    }
}