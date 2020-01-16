ENIG-Server
====

JSON API server version of ENIG.

## How to use

### Usage of `enigAuto`

Just send an JSON argument `{ "_str": "한글은(는) 어디에" }` to http(s)://SERVER/auto as a POST method.
Then it returns a response like `{ "_str": "한글은 어디에" }` as JSON.
