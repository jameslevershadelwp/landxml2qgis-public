import boto3


def folders(client, bucket, prefix=''):
    list_ = []
    paginator = client.get_paginator('list_objects')
    for result in paginator.paginate(Bucket=bucket, Prefix=prefix, Delimiter='/'):
        for prefix in result.get('CommonPrefixes', []):
            list_.append(prefix.get('Prefix'))
    return list_
