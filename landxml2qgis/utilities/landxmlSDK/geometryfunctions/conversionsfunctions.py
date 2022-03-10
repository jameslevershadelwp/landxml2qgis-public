import math

# convert decimal degrees to hp notation
def dd2hp(dec):
    minute, second = divmod(abs(dec) * 3600, 60)
    degree, minute = divmod(minute, 60)
    hp = degree + (minute / 100) + (second / 10000)
    return hp if dec >= 0 else -hp


# convert hp notation to decimal degrees
def hp2dd(hp_bearing):
    # convert the float to a string for processing

    if hp_bearing is not None:
        x = str(float(hp_bearing))
        pos = True
        if float(x) < 0:
            pos = False

        degrees, minsec = x.split('.')
        minsec = minsec.ljust(4, '0')
        degrees = int(degrees)
        minutes = int(minsec[:2])
        power = 2 - (len(minsec[2:]))
        seconds = (float(minsec[2:])) * (10 ** power)

        if pos is True:
            dd = degrees + (float(minutes) / 60.) + (float(seconds) / 3600.)
        else:
            dd = degrees - (float(minutes) / 60.) - (float(seconds) / 3600.)

        return dd

def chord2arc(distance, radi, large=False):
    if distance > (radi * 2):
        distance = radi * 2
    dsq = distance * distance
    inth = float((radi * radi)) - (float(dsq) / 4.0)
    h = float(radi) - math.sqrt(float(inth))
    fourh = 4 * h
    p1 = math.asin(float(distance) / (h + (float(dsq) / fourh)))
    p2 = (h + (float(dsq) / fourh))
    distance = p1 * p2
    if large is True:
        circum = math.pi * radi
        distance = circum - distance
    return distance


def arc2chord(arc_length, radius):
    if arc_length is not None and radius is not None:
        p1 = arc_length / radius
        p2 = 2 * radius
        p3 = math.sin(p1 / 2)
        return p2 * p3


def m2latitudesecods(m, radius=6371000):
    return m/radius*180/math.pi*3600


def m2longitudeseconds(m, lat, radius=6371000):
    return (m / radius / math.cos(lat) * 180 / math.pi) * 3600
