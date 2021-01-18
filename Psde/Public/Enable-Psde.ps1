function Enable-Psde {
	<#
	.SYNOPSIS
	Enable powershell developer environment functionality
		
	.DESCRIPTION
	Powershell Developer Environment (PSDE) is a simple tool that sets paths to local SDKs and sets related 
	environment variables such as JAVA_HOME. Global settings can exist along with local project settings. 
	The PSDE can be invoked manually from powershell or automatically from your powershell profile. 
	In addition to tooling there are pre and post hooks for use when needed. 
		
	.EXAMPLE
	Enable-Psde

	PSDE will automatically seach and use config files for tooling.

	#>
	
	begin {
		. "$env:USERPROFILE\.psde\cfg.ps1"
	}

	process {
		Write-Host "Setup env"  -ForegroundColor $foregroundcolor
		Write-Host "=======================================" -ForegroundColor $foregroundcolor

		Write-Host "Setting up global pre env..."
		Use-Script -ScriptPath "$env:USERPROFILE\.psde\pre.ps1"

		Write-Host "Setting up local pre env..."
		Use-Script -ScriptPath "$currentPath\.psde\pre.ps1"

		Write-Host "Setting up global tools..."
		Use-ToolsScript -ScriptPath "$env:USERPROFILE\.psde\tools.ps1"

		Write-Host "Setting up local tools..."
		Use-ToolsScript -ScriptPath "$currentPath\.psde\tools.ps1"

		Write-Host "Setting up global post env..."
		Use-Script -ScriptPath "$env:USERPROFILE\.psde\pre.ps1"

		Write-Host "Setting up local post env..."
		Use-Script -ScriptPath "$currentPath\.psde\post.ps1"

		Write-Host "=======================================" -ForegroundColor $foregroundcolor
		Write-Host "Finished env"  -ForegroundColor $foregroundcolor
	}

	end {
	}
}

if ($loadingModule) {
	Export-ModuleMember -Function 'Enable-Psde'
}

