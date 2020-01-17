ENIG-Server
====

JSON API server version of ENIG.

## How to use

### Usage of `enigAuto`

#### JSON API

Just send an JSON argument `{ "_str": "한글은(는) 어디에" }` to `http(s)://SERVER/auto` as a POST method.
Then it returns a response like `{ "_str": "한글은 어디에" }` as JSON.

#### PlainText API

Just access with Param `한글은(는) 어디에` like `http(s)://SERVER/auto/한글은(는) 어디에` as a GET method.
Then it returns a response like `한글은 어디에` as PlainText.

## Is this Open Source?

It would be. But not sure because we couldn't agree with that which OSS license is suited for our purpose.
I published this code as readable for everyone, but I couldn't guarantee that you can reuse this freely.
