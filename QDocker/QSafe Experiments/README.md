# Experiments with Quantum Safe Algorithms

## Traffic Shaping

The main issue here on windows is simulating realistic network conditions.

The easiest solution seems to be to use the quatum-safe Chromium build to act as the client in all instances, and using its built-in networking tools to simulate different scenarios.


## API Usecase - port 4435

This will involve (probably, requires testing) a Flask server, that will host a simple HTML page. This page will have Javascript to stress test the Flask api - performing large requests and large volumes of smaller requests, displaying the timing results to screen.


## File Transfer Usecase - port 4434

This will involve a Chromium client selecting a download size, and observing network speeds while it takes place.


## Video Usecase - port 4433

This is simple, involves a Cromium client loading a high-bitrate 4K video.

## TLS Handshake times

The initial connection times are observable in the diagnostics available in Chromium, but aren't particularly clear. It may be beneficial to devise tests to analyze this aspect on its own.
