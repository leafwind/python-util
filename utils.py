# -*- coding: utf-8 -*-

def file2str(filename):
    with open(filename, 'r') as f:
        data = f.read().replace('\n', '')
        return data
