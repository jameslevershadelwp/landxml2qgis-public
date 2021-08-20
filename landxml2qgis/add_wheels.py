import os
import sys
import platform

def add_wheels():
    major, minor, micro = platform.python_version_tuple()
    system_name = platform.system().lower()
    try:
        import visvalingamwyatt
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 'visvalingamwyatt-0.1.4-py2.py3-none-any.whl')
        sys.path.append(path)

    try:
        import networkx
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 'networkx-2.6.2-py3-none-any.whl')
        sys.path.append(path)

    try:
        import s3transfer
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 's3transfer-0.5.0-py3-none-any.whl')
        sys.path.append(path)

    try:
        import botocore
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 'botocore-1.21.23-py3-none-any.whl')
        sys.path.append(path)

    try:
        import jmespath
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 'jmespath-0.10.0-py2.py3-none-any.whl')
        sys.path.append(path)

    try:
        import boto3
    except ImportError:
        this_dir = os.path.dirname(os.path.realpath(__file__))
        path = os.path.join(this_dir, 'wheels', 'boto3-1.18.23-py3-none-any.whl')
        sys.path.append(path)

    try:
        import shapely

    except ImportError:
        raise
        # if major == 3 and minor in {'6', '7', '8', '9'}:
        #     this_dir = os.path.dirname(os.path.realpath(__file__))
        #     mn = str(major) + str(minor)
        #     if system_name == 'windows':
        #         shapely_name = f'Shapely-1.7.1-cp{mn}-cp{mn}m-win_amd64.whl'
        #     elif system_name == 'darwin':
        #         shapely_name = f'Shapely-1.8a2-cp{mn}-cp{mn}m-macosx_10_9_x86_64.whl'
        #     elif system_name == 'linux':
        #         shapely_name = f'Shapely-1.8a2-cp{mn}-cp{mn}m-manylinux_2_5_x86_64.manylinux1_x86_64.whl'
        #     else:
        #         shapely_name = None
        #     if shapely_name is not None:
        #         path = os.path.join(this_dir, 'wheels', 'shapely', shapely_name)
        #         sys.path.append(path)
        #         # test the import in here, as i am not testing for 32 bit windows, and some linux might not work
        #         import shapely
        # else:
        #     # just import shapely here to raise import error within this try
        #     import shapely
