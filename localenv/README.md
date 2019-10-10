# Rawdata Converter Local Environment

Configuration for a local runtime environment that ties services together
to form a complete working example sandbox.


## Make targets

You can use `make` to execute common tasks:
```
start-all                      Start all services (docker containers)
start-all-recreate             Recreate and start docker containers even if their configuration and image haven't changed
stop-all                       Stop and remove all services (docker containers)
start-db                       Start DB-only containers
start-freg-collector           Start the FREG rawdata collector service
start-freg-converter           Start the FREG rawdata converter service
freg-collector-activate        Activate the FREG rawdata collector
freg-collector-deactivate      Deactivate the FREG rawdata collector
freg-converter-activate        Activate the FREG rawdata converter
freg-converter-deactivate      Deactivate the FREG rawdata converter
sirius-converter-activate      Activate the Sirius rawdata converter
sirius-converter-deactivate    Deactivate the Sirius rawdata converter
open-adminer                   Open a web based DB admin tool in your browser
```


## Prerequisites

## Services

* FREG data collector (http://localhost:18080)
* FREG rawdata converter (http://localhost:18081)
* Sirius rawdata converter (http://localhost:18083)
* A postgres DB (http://localhost:5432)
* An adminer UI for the DB (http://localhost:18090)



