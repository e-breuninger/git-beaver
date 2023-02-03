# Repository e-breuninger/git-beaver

Builds a curated open-source release of the GitBeaver utility as docker image. 

## Purpose

This repositories is used to build docker releases of GitBeaver including recommended plugins (see plugins.md). 
Plugins are frozen after the list has been processed, this prevents other beaver scripts from installing additional
(potentially harmful) plugins.

# Context

The following chart shows relations between the various git repositories (rectangles) and docker image (ellipses) that are
used to create and operate the central git-beaver cloud run service (hexagon). 

![alternative text](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/e-breuninger/git-beaver-gcp/main/overview.puml)

# Documentation

All integrated plugins and available commands are listed in [this automatically created documentation](https://htmlpreview.github.io/?https://raw.githubusercontent.com/e-breuninger/git-beaver/main/doc/autocreated/index.html).

## Links

### Git Repositories
* GitBeaver core: https://github.com/g-bvr/core
* GitBeaverPlugins: https://github.com/g-bvr/
* This repository URL: https://github.com/e-breuninger/git-beaver/
* Derived Project (specific to google cloud platform): https://github.com/e-breuninger/git-beaver-gcp/

### Docker Images
* Used base docker image: https://hub.docker.com/r/gitbeaver/core/tags
* Created docker image: https://hub.docker.com/r/gitbeaver/release/tags
