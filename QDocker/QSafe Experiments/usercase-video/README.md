# Video Server Demo

The purpose of this demo is to give a Quantum-Safe Chromium user a feeling of the difference in general internet usage for quantum and non-quantum secure sites, under different network conditions.

# Usage - Windows

Populate `server\server-pki` with self signed `server.crt` and `server.key` files (that sign the localhost domain), ensuring that the CA used to sign them is stored in the machine's Trusted Root Certification Authorities.

Download [this](https://commons.wikimedia.org/wiki/File:Big_Buck_Bunny_4K.webm) video file, and save it in `server\htdocs` as `demo.webm`. This is a 4K resolution, 60fps, extremely high bitrate video file, which demands the absolute best networking conditions to perform well, and thus and performance degradation to throughput caused by quantum-safe encryption will be very noticeable.

Delete any active instances of the `VideoServer` container in Docker GUI/CLI and run `build_and-run.bat`.

With this running, you can navigate to `https://localhost:4433` and you should see a secure connection, and be able to play the video onscreen.

# Experimenting With the Setup

To make use of this experiment, there are a few settings that can be modified.

## Encryption Algorithm

Modifying the encryption algorithm involves editing `httpd-ssl.conf`, selecting one from the following currently available in the Chromium build:

* P256_BIKE1L1CPA
* P256_FRODO640AES
* P256_KYBER90S512
* P256_NTRU_HPS2048509
* P256_LIGHTSABER
* P256_SIDHP434
* P256_SIKEP434

E.g.

```
SSLOpenSSLConfCmd Curves p256_kyber90s512
```

Commenting out this line will default to standard (non-quantum safe) encryption.

## Network Scenario

Different network scenarios and conditions can be set with modifications to the `tc` command (and by adding more of them), some simple examples are shown [here](https://www.badunetworks.com/9-sets-of-sample-tc-commands-to-simulate-common-network-scenarios/).

## Signature Algorithm

It may be useful to change the signature algorithm to a different one. Any valid cert that signs localhost (and has a SAN) and is signed by a trusted CA can be copied to `server-pki`, provided it is named correctly.
