all: test vet vuln staticcheck

test:
	go test ./...

vet:
	go vet ./...

vuln:
	govulncheck ./...

staticcheck:
	staticcheck -f stylish ./...
