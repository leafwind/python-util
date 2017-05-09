# -*- coding: utf-8 -*-

import logging
import time

def file2str(filename):
    with open(filename, 'r') as f:
        data = f.read().replace('\n', '')
        return data


def printException(f):
    def d_f(*args, **kwargs):
        try:
            result = f(*args, **kwargs)
            return result
        except Exception as e:
            logging.exception('exception: %s', repr(e))
            return None
    return d_f


def timeit(f):
    def timed(*args, **kwargs):
        ts_start = time.time()
        result = f(*args, **kwargs)
        ts_end = time.time()
        logging.warning('[timeit] %r (%r, %r) %2.2f sec.', f.__name__, args, kwargs, ts_end - ts_start)
        return result
    return timed



