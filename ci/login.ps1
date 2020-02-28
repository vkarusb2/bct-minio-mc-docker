#!/usr/bin/env pwsh

param
(
	[Parameter(Mandatory=$true)][string]$username,
	[Parameter(Mandatory=$true)][string]$apikey
)

$dockerRepo="tbctdevops-docker-local.jfrog.io"
	  

# Use PowerShell to write to stdin - docker login recommends doing it this way
$processInfo = New-Object System.Diagnostics.ProcessStartInfo("docker", "login $dockerRepo --username $username --password $apikey");
$processInfo.RedirectStandardInput = $true;
$OS = "$env:OS".ToLower();
If ($OS -like 'windows')
{
$processInfo.UseShellExecute = $false;
}
$process = [System.Diagnostics.Process]::Start($processInfo);
$process.StandardInput.WriteLine($apikey);