# Rawdata Converter Project

Facilitates a development environment for working with multiple
standalone Rawdata Converter repos in a common context.

Also provides a local runtime environment that ties the different services
together to form a complete working example sandbox.


## Getting started

1) Retrieve all related repos from git:
```
make install
```

2) Open the multi-module project in your IDE, e.g:
```
idea pom.xml
```

3) Refer to [localenv](localenv/README.md) for further instructions on how to spin up a
local runtime environment.


## Make targets

You can use `make` to execute common tasks:

```
build-all                      Build all and create docker image (requires rawdata-converter-project)
build-all-mvn                  Build all from parent (requires rawdata-converter-project)
build-mvn                      Build the project and install to you local maven repo
build-docker                   Build the docker image
run-local                      Run the app locally (without docker)
release-dryrun                 Simulate a release in order to detect any issues
release                        Release a new version. Update POMs and tag the new version in git. Drone deploys upon tag detection.
```


## References

* [rawdata-converter-core](https://github.com/statisticsnorway/rawdata-converter-core)
* [rawdata-converter-app-freg](https://github.com/statisticsnorway/rawdata-converter-app-freg)
* [rawdata-converter-app-sirius](https://github.com/statisticsnorway/rawdata-converter-app-sirius)
* [localenv](localenv/README.md)
