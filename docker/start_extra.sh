#!/bin/sh
echo "Starting Visualizer at port 8001 ...."
cd /visualizer
kubectl proxy -p 8001 --address=0.0.0.0 --accept-hosts="^.*$" --www=$(pwd) --www-prefix=/k8s --api-prefix=/api/

