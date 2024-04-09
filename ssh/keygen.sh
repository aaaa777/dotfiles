#!/bin/bash

#openssl genpkey -algorithm ed25519 -out id_25519.pem
#openssl pkey -in id_25519.pem -pubout > id_25519.pub.pem

ssh-keygen -t ed25519

