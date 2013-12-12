import csv
from os import listdir
from os.path import isfile, join
from dionysus import *

def csv_to_list(filename):
    ret = []
    with open(filename, 'r') as f:
        reader = csv.reader(f)
        for row in reader:
            ret.append(tuple(row))
    return ret

def dist(a, b, p):
    return wasserstein_distance(a,b,p)

num_chunks = 30
p = 2
data_directory = "/Users/christiandrappi/Dropbox/top_proj/small_diagrams/" + str(num_chunks) + "/"

files = [data_directory+f for f in listdir(data_directory) if isfile(join(data_directory,f)) and f.endswith(".csv") ]
files.sort()

n = len(files)
wmat = [[0] * n ] * n
for e1, f1 in enumerate(files):
    for e2, f2 in enumerate(files):
        diag1 = PersistenceDiagram(1,csv_to_list(f1))
        diag2 = PersistenceDiagram(1,csv_to_list(f2))
        wmat[e1][e2] = dist(diag1,diag2,p)

# print(wmat)