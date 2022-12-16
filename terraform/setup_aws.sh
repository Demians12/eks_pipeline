#!/bin/bash

REGION="us-east-1"

aws s3api create-bucket \
    --bucket pipeline-source-test-workshop10 \
    --region $REGION


