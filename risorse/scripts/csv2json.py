import csv
import json

data = []
with open("data.csv", 'r') as f:
	csvReader = csv.DictReader(f)
	for r in csvReader:
		data.append(dict(r))
with open("data.json", 'w') as f:
	json.dump(data, f)
