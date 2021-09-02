# File Server Demo

The purpose of this demo is to benchmark the performance of file transfers on quantum safe networks.

# Usage - Windows

1. Populate `server\server-pki` with self signed `server.crt` and `server.key` files (that sign the localhost domain), ensuring that the CA used to sign them is stored in the machine's Trusted Root Certification Authorities. See `cert-generation` for instructions no creating these.

2. Navigate to `server` and run `build_and_run.bat`. Navigate to `client`, and each time `build_and_run.bat` is run, the output of the curl command is appended to `results\logs.log`. The metrics collected are very crude, I will look into timing connection, handshake etc as a next step.


# Experimenting With the Setup

To make use of this experiment, there are a few settings that can be modified.

## Encryption Algorithm

Modifying the encryption algorithm involves editing `httpd-ssl.conf`, selecting one from the following currently available in the Chromium build (it is worth focusing on the kyber algorithm):

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

Note that I have not yet managed to successfully get tc working on docker in windows, an alternative method is needed.

Different network scenarios and conditions can be set with modifications to the `tc` command (and by adding more of them), some simple examples are shown [here](https://www.badunetworks.com/9-sets-of-sample-tc-commands-to-simulate-common-network-scenarios/).

## Signature Algorithm

It may be useful to change the signature algorithm to a different one. Any valid cert that signs localhost (and has a SAN) and is signed by a trusted CA can be copied to `server-pki`, provided it is named correctly.
