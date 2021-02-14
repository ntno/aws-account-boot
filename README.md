# aws-account-boot

```
make docker
make validate template="terraform"
```

- create service user in console with attached policies:
    - arn:aws:iam::aws:policy/AmazonEC2FullAccess
    - arn:aws:iam::aws:policy/AmazonS3FullAccess
    - arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess
    - arn:aws:iam::aws:policy/CloudWatchFullAccess
    - arn:aws:iam::aws:policy/IAMFullAccess

- create stack via console