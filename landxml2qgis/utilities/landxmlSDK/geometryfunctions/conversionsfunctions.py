# convert decimal degrees to hp notation
def dd2hp(dec):
    minute, second = divmod(abs(dec) * 3600, 60)
    degree, minute = divmod(minute, 60)
    hp = degree + (minute / 100) + (second / 10000)
    return hp if dec >= 0 else -hp


# convert hp notation to decimal degrees
def hp2dd(hp_bearing):
    # convert the float to a string for processing
    x = hp_bearing
    if x is not None:
        pos = True
        if float(x) < 0:
            pos = False

        x = str(x)  # float adds decimal point where missing from whole numbers
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
