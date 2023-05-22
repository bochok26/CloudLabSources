#!/usr/bin/env python3

import boto3
import sys


def send(file, bucket):
	client = boto3.client('s3')
	with open(file, 'rb') as f:
		client.upload_fileobj(f, bucket, file)
		

send(sys.argv[1], sys.argv[2])
