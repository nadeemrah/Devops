#!/bin/sh
HOST=db.example.com
DBNAME=my-db
BUCKET=your_bucket
OBJECT="$(aws s3 ls  $BUCKET --recursive | sort | tail -n 1 | awk '{print $4}')"
aws s3 cp s3://$BUCKET/$OBJECT ~/tmp/$OBJECT
tar xvf ~/tmp/$OBJECT ~/data/$OBJECT.bson
mongorestore --host $HOST --db $DBNAME ~/data/$OBJECT.*
