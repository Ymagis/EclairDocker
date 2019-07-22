# ffmpeg

A docker image for Cinema JPEG2000 decoding.

This uses image from https://github.com/jrottenberg/ffmpeg with modifications :
*  Uses lastest version of OpenJPEG (threading improvements)
*  Correctly interpret cinema profiles as XYZ instead of RGB
*  Install fontconfig to allow usage of drawtext filter

Available on dockerhub : [ffmpeg](https://cloud.docker.com/u/remiaa/repository/docker/remiaa/ffmpeg)

# asdcplib

A docker image for asdcplib, based on alpine
