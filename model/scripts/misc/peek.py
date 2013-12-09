import csv

real_data = {}
with(open("data/actual/titanic.csv", "r")) as t:
    reader = csv.reader(t)
    header = next(reader)
    for row in reader:
        real_data[row[2].lower().replace('"', "")] = row[1]

test_data = {}
with(open("data/orig/test.csv", "r")) as t:
    reader = csv.reader(t)
    header = next(reader)
    for e,row in enumerate(reader):
        test_data[row[1].lower().replace('"', "")] = e+892

answers = []
for key in test_data:
    answers.append([test_data[key], real_data[key]])

answers.sort()

with(open("data/actual/peek2.csv", "w+")) as f:
    writer = csv.writer(f)
    writer.writerow(["PassengerID", "Survived"])
    for a in answers:
        writer.writerow(a)
