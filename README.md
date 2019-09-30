## TheiaCompass cpp Docker

A containerized Theia-based C/C++ IDE, including the [theia-trace-extension](https://github.com/delislesim/theia-trace-extension/tree/theiaCompass) to visualize traces.

### How to use

Run on http://localhost:3000 with the current directory as a workspace:
```bash
docker run --security-opt seccomp=unconfined --init -it -p 3000:3000 -p 8080:8080 -v "$(pwd):/home/project:cached" theia-compass-cpp:next
```

### How to build

Build image using `next` Theia packages and theia-trace-extension from GitHub.

You can get a trace-compass-server [here](https://download.eclipse.org/tracecompass.incubator/trace-server/rcp/?d) to build the image. Make sure the startscript.sh is executable before building the image

```bash
docker build --no-cache --build-arg version=next --build-arg strip=true  -t theia-compass-cpp:next .
```

### Disclaimer
This is a work in progress and should only be use for testing purposes.

The current image doesn't respect the docker convention of having one process per container. 
