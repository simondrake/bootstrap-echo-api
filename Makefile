
deps:
	go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.18.0
	go get github.com/jstemmer/go-junit-report
	go get github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.3.0
	go get github.com/maxcnunes/waitforit

openapi:
	oapi-codegen --package api api/spec.yaml > api/api.gen.go

local:
	go run cmd/api/main.go