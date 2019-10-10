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
install                        Checkout all related rawdata-converter repos
update-all                     Pull all changes from remote repos
build-all                      Build all
```


## References

* [rawdata-converter-core](https://github.com/statisticsnorway/rawdata-converter-core)
* [rawdata-converter-app-freg](https://github.com/statisticsnorway/rawdata-converter-app-freg)
* [rawdata-converter-app-sirius](https://github.com/statisticsnorway/rawdata-converter-app-sirius)
* [localenv](localenv/README.md)
