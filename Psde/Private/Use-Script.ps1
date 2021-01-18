function Use-Script {
    <#
   
    .SYNOPSIS
    Sources the script
    
    .DESCRIPTION
    Sources the script
    
    .PARAMETER ScriptPath
    The full path to the scripy
     
    #>

    [CmdletBinding()]
    param(
        [Parameter( Mandatory, ValueFromPipelineByPropertyName )]
        [string[]] $ScriptPath
    )

    begin {
    }

    process {
        if (Test-Path -Path "$ScriptPath")
        {
            .  $ScriptPath
        }
    }

    end {
    }
}