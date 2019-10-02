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
open-adminer                   Open a web based DB admin tool in your browser
```


## Prerequisites

#### SSB certificate

In order for the FREG data collector to start successfully, you will need to have a `$PWD/certs` folder with:

* the SSB public test certificate (in PEM format) (e. g. `ssb-certificate-test-public.pem`)
* the certificate's private key (e. g. `ssb-certificate-test-private.key`)
* a `secret.properties` file with content like this:
```
publicKeyCertificate.file=ssb-certificate-test-public.pem
privateKeyCertificate.file=ssb-certificate-test-private.key
secret.passphrase=...
```
Ask one of the project maintainers to get hold of SSB certificates.


## Services

* FREG data collector (http://localhost:18080)
* FREG rawdata converter (http://localhost:18081)
* A postgres DB (http://localhost:5432)
* An adminer UI for the DB (http://localhost:18090)



