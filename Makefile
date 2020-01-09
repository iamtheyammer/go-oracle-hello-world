build/go:
	go build main.go

run/go:
	go run main.go

wallet/build/docker:
	docker build -f Dockerfile_wallet -t go-oracle-hello-world-wallet .

wallet/run/docker:
	docker run go-oracle-hello-world-wallet

build/docker:
	docker build -t go-oracle-hello-world .

run/docker:
	docker run go-oracle-hello-world