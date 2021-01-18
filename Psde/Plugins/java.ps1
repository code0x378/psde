function tools
{
    if ($java)
    {
        $javaPath = "$sdkPath\java\$java"
        $env:Path = $javaPath + "\bin;" + $env:Path
        $env:JAVA_HOME = $javaPath
        Get-Command java
    }
}