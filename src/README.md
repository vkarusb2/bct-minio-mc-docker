# This is the minio client docker chart for the TNG project. 

> Tip: To find Api Key.
> 1) To get/generate your apikey, navigate to https://tbctdevops.jfrog.io/tbctdevops/webapp/#/profile.
> 2) If not generated, click on the generate icon
> 3) Click the copy to keyboard icon.

## Versions

Alpine : `3.10`   
Minio mc : `latest`

# Introduction


This is a repo for dockerfile for MinIO client image.

# Build and Publish Docker Image to Artifactory registry from the Dockerfile

1. Login to the registry using build-user credentials:
```
    docker login tbctdevops-docker-local.jfrog.io --username *** --password ***
```

2. Build the image:
```
    docker build -t <docker-image-name> -f Dockerfile .
```

3. Tag the build: 
```
    docker tag <docker-image-name> tbctdevops-docker-local.jfrog.io/<docker-image-name>:<tag>
```

4. Push the image to the correct registry:
```
    docker push tbctdevops-docker-local.jfrog.io/<docker-image-name>:<tag>
```

## Commands

**Pull :** `docker pull tbctdevops-docker-local.jfrog.io/bct-minio-mc`
**Run :** `docker run -it --entrypoint=/bin/sh tbctdevops-docker-local.jfrog.io/bct-minio-mc`

