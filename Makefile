build:
	mkdir -p bin
	go build -ldflags="-s -w" -o bin/hotrod main.go 
clean:
	rm -r bin
