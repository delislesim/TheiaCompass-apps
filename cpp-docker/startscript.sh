#!/bin/bash
/home/theia/trace-compass-server/tracecompass-server &

node /home/theia/src-gen/backend/main.js /home/project --hostname=0.0.0.0