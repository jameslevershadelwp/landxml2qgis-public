import logging
from cloudwatch import cloudwatch
# Create the logger
logger = logging.getLogger('__name__')
# Create the formatter
formatter = logging.Formatter('%(asctime)s : %(levelname)s - %(message)s')
# Create the handler
# ---- Create the Cloudwatch Handler ----
handler = cloudwatch.CloudwatchHandler('AKIAQSWIA7F6PQH5GTZC', 'RpWV3q81szIXFVcuUHtzrF2K5JJqZ7+Zwww3uC9S','ap-southeast-2', 'dcm-int-log', 'auto')

# Pass the formater to the handler
handler.setFormatter(formatter)

# Setting the level
logger.setLevel(logging.ERROR)
logger.setLevel(logging.INFO)

# Add the handler to the logger
logger.addHandler(handler)
