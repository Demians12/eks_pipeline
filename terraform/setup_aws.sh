#!/bin/bash

REGION="us-east-1"

aws s3api create-bucket \
    --bucket pipeline-source-test-workshop101 \
    --region $REGION


