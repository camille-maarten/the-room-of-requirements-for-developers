#!/bin/bash

oc apply -f minio/minio-persistent-volume-claim.yaml
oc apply -f minio/minio-deployment.yaml
oc apply -f minio/minio-service.yaml
oc apply -f minio/minio-route.yaml