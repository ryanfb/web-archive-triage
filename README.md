web-archive-triage
==================

`web-archive-triage` is a set of simple scripts designed to triage web archiving of a list of URLs.

## Requirements

 * [cURL](http://curl.haxx.se/)

## Usage

 * `wayback-memento-check.sh` - takes a list of URLs on standard input and checks for the presence of at least one snapshot in the Internet Archive Wayback Machine via the Memento API.

        ./wayback-memento-check.sh urls-present.txt urls-missing.txt < urls.txt

 * `wayback-save.sh` - takes a list of URLs on standard input and submits them for saving by the Internet Archive Wayback Machine.

        ./wayback-save.sh save-success.txt save-failure.txt < urls-missing.txt

 * `mementoweb-check.sh` - takes a list of URLs on standard input and checks for the presence of at least one snapshot in any web archive known by the [mementoweb.org Time Travel service](http://timetravel.mementoweb.org/about/#find) via [the Memento API](http://timetravel.mementoweb.org/guide/api/#timegate).

        ./mementoweb-check.sh urls-present.txt urls-missing.txt < urls.txt

 * `archiveis-check.sh` - takes a list of URLs on standard input and checks for the presence of at least one snapshot in [archive.is](http://archive.is/) via [the Memento API](http://mementoweb.org/depot/native/archiveis/).

        ./archiveis-check.sh urls-present.txt urls-missing.txt < urls.txt

 * `archiveis-save.sh` - takes a list of URLs on standard input and submits them for saving by [archive.is](http://archive.is/).

        ./archiveis-save.sh save-success.txt save-failure.txt < urls-missing.txt

