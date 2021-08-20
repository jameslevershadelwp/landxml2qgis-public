from os import urandom
from uuid import uuid1
_int_from_bytes = int.from_bytes

def get_uuid():
    return uuid1(_int_from_bytes(urandom(6), "big") | 0x010000000000)