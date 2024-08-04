#!/bin/bash

# Cast A Vote App

echo "Building and pushing Cast A Vote App"

docker build -t kind-registry:5001/vote-casting-app:latest .

docker push kind-registry:5001/vote-casting-app:latest

echo "Deploying App"

kubectl apply -f templates/app.yaml 