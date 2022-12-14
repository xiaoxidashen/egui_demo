@echo off

@REM Starts a local web-server that serves the contents of the `doc/` folder,
@REM which is the folder to where the web version is compiled.

cargo install basic-http-server

echo "open http://localhost:9090"

(cd docs && basic-http-server --addr 127.0.0.1:9090 .)
@REM (cd docs && python3 -m http.server 9090 --bind 127.0.0.1)
