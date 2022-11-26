# Repository e-breuninger/git-beaver

Curated open-source release of safe GitBeaver docker image.

## Purpose

This repositories is used to build docker releases of GitBeaver including recommended plugins (see plugins.md). 
Plugins are frozen after the list has been processed, this prevents other beaver scripts from installing additional
(potentially harmful) plugins.

TODO  Prevent harmful plugins from reading the master key volume.

## Docker Image

The created docker image will be pushed to https://hub.docker.com/repository/docker/gitbeaver/release