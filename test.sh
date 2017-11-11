#!/bin/bash

# Run Project
docker-compose up --build -d
sleep 5

# Query results
curl 127.0.0.1:5000/secret | jq '.secret_code'
curl 127.0.0.1:5000/health | jq '.'

# Destroy 
docker-compose down

