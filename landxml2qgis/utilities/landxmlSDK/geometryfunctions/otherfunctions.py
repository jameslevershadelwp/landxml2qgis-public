from itertools import tee, islice, chain
import numpy as np


def chunker(a_list, n):
    """Yield successive n-sized chunks from l."""
    for i in range(0, len(a_list), n):
        yield a_list[i:i + n]


# module gets previous and next item in a iterable
def previous_and_next(some_iterable):
    prevs, items, nexts = tee(some_iterable, 3)
    prevs = chain([None], prevs)
    nexts = chain(islice(nexts, 1, None), [None])
    return zip(prevs, items, nexts)


# sort a list in tuples
def sort_by_tuple(tup, index=1):
    # key is set to sort using second element of
    # sublist lambda has been used
    tup.sort(key=lambda x: x[index])
    return tup


# converts a matrix into a specified format so can be used with shapley affinity
def convert_r(x):
    return x[0][:2].tolist() + x[1][:2].tolist() + x[0][-1:].tolist() + x[1][-1:].tolist()


# cycle through a list
def cycle_list(some_list):
    return some_list[1:] + some_list[:1]


# convert polygon to array of points
def convert_polygon_to_array(polygon):
    listarray = []
    polypoints = polygon.exterior.coords[:]

    for pp in polypoints:
        listarray.append([pp[0], pp[1]])
    return np.array(listarray)


def remove_duplicates(seq):
    seen = set()
    seen_add = seen.add
    return [x for x in seq if not (x in seen or seen_add(x))]







