import csv
from os import listdir
from os.path import isfile, join
from dionysus import *


def csv_to_list(filename):
    ret = []
    with open(filename, 'r') as f:
        reader = csv.reader(f)
        for row in reader:
            ret.append(tuple([float(i) for i in row]))
    return ret

def dist(a, b, p):
    return wasserstein_distance(a,b,p)

num_chunks = 100
p = 1
data_directory = "/Users/aashiq/Dropbox/top_proj/model/data/small_diagrams/" + str(num_chunks) + "/"

files = [data_directory+f for f in listdir(data_directory) if isfile(join(data_directory,f)) and f.endswith(".csv") ]
files.sort()

# print(csv_to_list(files[1]))

n = len(files)
wmat = [[0 for i in range(n) ] for j in range(n)]
for e1, f1 in enumerate(files):
    for e2, f2 in enumerate(files):
        diag1 = PersistenceDiagram(1,csv_to_list(f1))
        diag2 = PersistenceDiagram(1,csv_to_list(f2))
        wmat[e1][e2] = dist(diag1,diag2,p)


with open("wass_kern_" + str(num_chunks) + ".csv", 'w') as f:
    writer = csv.writer(f, delimiter = ',')
    for r in wmat:
        writer.writerow(r)



# print(wmat)

# print(wmat)