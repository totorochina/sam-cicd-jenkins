#!/bin/bash

REPLACE_THIS_WITH_YOUR_S3_BUCKET_NAME="hzchen-private-ore"
REGION="cn-north-1"
STACK="sam-apidemo-prod"

pip install -r requirements.txt -t apidemo/build/ && \
cp apidemo/*.py apidemo/build/ && \

sam validate && \
sam package \
	    --template-file template.yaml \
	        --output-template-file packaged.yaml \
		    --s3-bucket $REPLACE_THIS_WITH_YOUR_S3_BUCKET_NAME \
		    --region $REGION
