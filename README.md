# Echo server

## What does it do
It's the server for the Echo app. It's a websocket and mediasoup server, it handles all communications between clients and the server, so basically joining rooms, sending messages, starting screen shares, etc...

## Features
- Mediasoup server handles:
  - Voice chat
  - Screen shares
- Websocket server handles:
  - Mediasoup signaling
  - Room joining/exiting
  - Messages notifications
  - Audio state notifications

Note: **WJT is required** on connection to the ws, the same one used for the api.

## How to run
There are two ways to do this:
- `npm start` to start the server using node, pm2 can also be used
- `docker run --network host ghcr.io/echo-project-org/echo-server:latest` to run it using Docker, make sure to expose all ports, the ws listenes on port 6982 but the underlying WebRTC connection could use any port.
