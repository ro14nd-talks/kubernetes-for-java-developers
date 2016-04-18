#!/bin/sh
echo "Starting Visualizer at port 8001 ...."
cd /visualizer
kubectl proxy -p 8001 --www=$(pwd) --www-prefix=/k8s --api-prefix=/api/

