# -*- coding: utf-8 -*-

def file2str(filename):
    with open(filename, 'r') as f:
        data = f.read().replace('\n', '')
        return data

# http://ot-note.logdown.com/posts/67571/-decorator-with-without-arguments-in-function-class-form
# try:
#     do_stuff()
# except Exception as e:
#     logging.exception('exception: %s', repr(e))
