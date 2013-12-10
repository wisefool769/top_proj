# scrub_mlb.py

import csv

data = {}
with open("mlb2.csv", "r") as f:
    reader = csv.reader(f)
    header = next(reader)
    header = ["name"] + header[4:]
    for r in reader:
        name = r[0] + " " + r[1] 
        if name not in data:
            data[name] = [0] * len(r[4:])
        for i,s in enumerate(r[4:]):
            if name in data:
                data[name][i] += int(s)
            else:
                data[name][i] = int(s)

with open("out.csv", "w+") as f:
    writer = csv.writer(f)
    writer.writerow(header)
    for k in sorted(data.keys()):
        writer.writerow([k] + data[k])