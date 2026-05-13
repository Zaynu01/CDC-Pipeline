#!/bin/bash

echo "Checking PostgreSQL..."
docker exec postgres pg_isready -U yahya

echo "Checking Kafka Connect..."
curl -s http://localhost:8083/ | head

echo "Checking MinIO..."
curl -s http://localhost:9000/minio/health/live

echo "Checking Iceberg REST Catalog..."
curl -s http://localhost:8181/v1/config | head

echo "Checking Spark..."
curl -s http://localhost:8080 | head

echo "Checking Trino..."
curl -s http://localhost:8085/v1/info | head