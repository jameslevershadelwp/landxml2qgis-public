import logging
import boto3
from botocore.exceptions import ClientError


def upload_file_obj(data, bucket, object_name=None):
    """Upload a file to an S3 bucket

    :param file_name: File to upload
    :param bucket: Bucket to upload to
    :param object_name: S3 object name. If not specified then file_name is used
    :return: True if file was uploaded, else False
    """
    # Upload the file
    s3_client = boto3.client('s3')
    try:
        response = s3_client.upload_fileobj(data, bucket, object_name)
    except ClientError as e:
        logging.error(e)
        return False
    return True

def download(object):
    s3_client = boto3.client('s3')
    try:
        response = s3_client.get_object()
    except ClientError as e:
        logging.error(e)
        return False
    return True


