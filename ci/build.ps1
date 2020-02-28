#!/usr/bin/env pwsh

param
(
	[Parameter(Mandatory=$true)][string]$version,
	[Parameter(Mandatory=$true)][string]$ReleaseVersion,
	[Parameter(Mandatory=$true)][string]$branch,
	[Parameter(Mandatory=$true)][boolean]$isReleaseVersion
)

# Assigning Global Variables
$buildName="minio-mc-build"
$dockerRepo="tbctdevops-docker-local.jfrog.io"
$dockerImage_collector="bct-minio-mc"

# Adding remove the out folder step to resolve an error when consecutively publishing images

docker build  -t "$dockerRepo/${dockerImage_collector}:$version" -t "$dockerRepo/${dockerImage_collector}:latest" --build-arg VERSION=$ReleaseVersion -f ./src/Dockerfile .
