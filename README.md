# go-oracle-hello-world

This repository is a super simple demonstration of connecting to an Oracle database from Golang.

## What does it do?

Print the date.

## How do I use this?

I wrote some instructions for Oracle Autonomous Transaction Processing (or Autonomous Data Warehousing) databases [here](https://medium.com/@iamtheyammer/connecting-to-an-oracle-autonomous-transaction-processing-database-on-your-mac-239f7513b86e?source=friends_link&sk=550a7e27cfb3b7e2820b70f5bd06454d).

Otherwise, make sure you change `connString` in `main.go`, then `make run/go`.

## What about Docker?

Glad you asked. Set your connString, then `make build/docker && make run/docker`.

### Need a wallet?

I got you.

1. Copy your wallet into the app directory
2. Rename the zip file to `wallet.zip` (don't worry-- this file is gitignored)
3. `make wallet/build/docker && make wallet/run/docker`

The normal and wallet containers are separately tagged so you can use both.

Also make sure you don't push your container to anything public as it'll contain your wallet!