#!/usr/bin/env bash

printf "AWS configuring..."

set -x

# congfigure and credentials to localstack (AWS)
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region $AWS_DEFAULT_REGION

echo "[default]" > ~/.aws/credentials
echo "aws_access_key_id = $AWS_ACCESS_KEY_ID" >> ~/.aws/credentials
echo "aws_secret_access_key = $AWS_SECRET_ACCESS_KEY" >> ~/.aws/credentials
echo "[default]" > ~/.aws/config
echo "region = $AWS_DEFAULT_REGION" >> ~/.aws/config

set +x
