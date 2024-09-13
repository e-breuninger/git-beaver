
# Repository e-breuninger/git-beaver

Builds a curated open-source release of the GitBeaver utility as docker image. 

## Purpose

This repositories is used to build docker releases of GitBeaver including recommended plugins (see plugins.md). 
Plugins are frozen after the list has been processed, this prevents other beaver scripts from installing additional
(potentially harmful) plugins.

# Context

The following chart shows relations between the various git repositories (rectangles) and docker image (ellipses) that are
used to create and operate the cloud build service for provisioning (hexagon). 

![build diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/e-breuninger/git-beaver/main/puml/build.puml)

The following chart illustrates how the generated tagged docker image (blue) can be provisioned inside an eco-system
of GCP services. It is used by a cloud build process (red) which triggered on changes to source repositories via pubsub.
All components of the eco system for the provisioning service live inside a dedicated provisioning project (dark green).

The provisioning machinery can then be used to porivision various central components (yellow) and allow data mesh participant 
teams to configure their individual resources (light green): 

![provisioning diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/e-breuninger/git-beaver/main/puml/provisioning.puml)

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

