# Generating Trusted Certs to Run Experiments

# Warning
Do not use the certs and keys provided in this repo. They exposed on the internet, and are examples for debugging purposes only.

## Certificate Authority

1. Navigate to `.\CA` in cmd, and simply run ca0generation.bat to generate a sample CA certificate that can be used to sign SSL certs.

2. Run certmgr.msc, and under Trusted Root Certification Authorities > Certificates, import the CA.crt we just created (rmember to delete this from here when complete as best practices).

## Creating TLS Certs

1. Set the desired Common Name and Subject Alternative Names in the various `.cnf` `.ext` and `.conf` files in this directory.

2. Run `cert-generation.bat`


## Changing Signing Algorithms

The signing algorithm can be specified in the two batch files mentioned above - the default set here is 4096-bit RSA for the CA and Dilithium2_AES hybrid for the TLS cert.

Note that Quantum-Safe CA's currently are not trusted, as that seems to involve system level verification - which is worth noting.


## Using The Certs

Copy the `.crt` and `.key` files into the relevant folders for the experiment you want to run.
