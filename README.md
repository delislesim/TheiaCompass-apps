## TheiaCompass cpp Docker

A containerized Theia-based C/C++ IDE, including the [theia-trace-extension](https://github.com/delislesim/theia-trace-extension/tree/theiaCompass) to visualize traces.

### How to use

### How to build

Build image using `next` Theia packages and theia-trace-extension from GitHub.

You can get a trace-compass-server [here](https://download.eclipse.org/tracecompass.incubator/trace-server/rcp/?d) to build the image.

```bash
docker build --no-cache --build-arg version=next --build-arg strip=true  -t theia-cpp:next .
``` 