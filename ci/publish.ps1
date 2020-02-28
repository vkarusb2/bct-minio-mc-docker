#!/usr/bin/env pwsh

param
(
	[Parameter(Mandatory=$true)][string]$version,
	[Parameter(Mandatory=$true)][string]$branch,
	[Parameter(Mandatory=$true)][boolean]$isReleaseVersion
)

$dockerRepo="tbctdevops-docker-local.jfrog.io"
$dockerImage_collector="bct-minio-mc"
 
# Adding remove the out folder step to resolve an error when consecutively publishing images

docker push "$dockerRepo/${dockerImage_collector}:$version"
if ($isReleaseVersion)
{	
    docker push "$dockerRepo/${dockerImage_collector}:latest"
}
