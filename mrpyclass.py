# -*- coding: utf-8 -*-
"""
Created on Mon Nov 23 19:05:58 2015

@author: tomhales
"""

#!/usr/local/bin/python
from mrjob.job import MRJob
import itertools

# ex1 - word count
class MRWC(MRJob):

    def mapper(self, _, line):
        for word in line.split():
            yield word, 1

    def reducer(self, word, counts):
        yield word, sum(counts)

# ex 2 - inverted index
# note - applying this twice gives the identity transformation
class MRInvIdx(MRJob):

    def mapper(self, _, line):
        usr, locs = line.split()
        for loc in locs.split(','):
            yield loc, usr

    def reducer(self, loc, usrs):
        yield loc, [k for k in usrs]

# ex 3 - chained wc job
class MRWC2(MRJob):

    # same as above
    def mapper1(self, _, line):
        for word in line.split():
            yield word, 1

    # same as above
    def reducer(self, word, counts):
        yield word, sum(counts)

    # extra step
    def mapper2(self, word, count_sum):
        if count_sum > 3:
            yield word, count_sum

    # instructions to framework on how to run chained job
    def steps(self):
        return [self.mr(mapper=self.mapper1,
                        reducer=self.reducer),
                self.mr(mapper=self.mapper2)]

if __name__ == '__main__':
    MRWC.run()
    #MRInvIdx.run()
    #MRWC2.run()
