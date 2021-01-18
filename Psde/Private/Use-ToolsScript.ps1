function Use-ToolsScript {
    <#
   
    .SYNOPSIS
    Sources and executes functions within the script
    
    .DESCRIPTION
    Automatically invokes plugins
    
    .PARAMETER ScriptPath
    The full path to the tools scripy
     
    #>

    [CmdletBinding()]
    param(
        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string[]] $ScriptPath
    )
    
    begin {
    }

    process {
        if (Test-Path -Path $scriptPath)
        {
            .  $scriptPath

            $files = Get-ChildItem "$PackageRoot\Plugins"
            foreach ($f in $files)
            {
                $pluginFile = "$PackageRoot\Plugins\$f"
                $plugin = (Get-Item $pluginFile).Basename
                . $pluginFile
                invoke-expression  "tools"
            }

            Write-Host
        }
    }

    end {
    }
}
