# Rawdata Converter Local Environment

Configuration for a local runtime environment that ties services together
to form a complete working example sandbox.


## Make targets

You can use `make` to execute common tasks:
```
start-all                                     Start all services (docker containers)
start-all-recreate                            Recreate and start docker containers even if their configuration and image haven't changed
stop-all                                      Stop and remove all services (docker containers)
start-db                                      Start DB-only containers
start-freg-collector                          Start the data collector service
start-freg-converter                          Start the FREG rawdata converter service
freg-collector-activate                       Activate the FREG rawdata collector
freg-converter-activate                       Activate the FREG rawdata converter
sirius-person-utkast-collector-activate       Activate the Sirius Person Utkast rawdata collector
sirius-person-fastsatt-collector-activate     Activate the Sirius Person Fastsatt rawdata collector
sirius-converter-activate                     Activate the Sirius rawdata converter
sirius-converter-deactivate                   Deactivate the Sirius rawdata converter
toll-tvinn-collector-activate                 Activate the Tvinn Tolldeklarasjon rawdata collector
open-adminer                                  Open a web based DB admin tool in your browser
```


## Prerequisites

You'll need valid test certificates in order to start the different data collector jobs. They should be located
like so:
```
localenv
├── (...)
├── certs
│   ├── ske-test-certs
│   │   ├── secret.properties
│   │   ├── testauth-key.pem
│   │   └── testauth-public.pem
│   └── toll-test-certs
│       ├── secret.properties
│       ├── testauthcert-key.pem
│       └── testauthcert-public.pem
```

Ask a friend to get hold of these ;-)



## Services

* Data collector (http://localhost:18080)
* FREG rawdata converter (http://localhost:18081)
* Sirius rawdata converter (http://localhost:18083)
* A postgres DB (http://localhost:5432)
* An adminer UI for the DB (http://localhost:18090)



