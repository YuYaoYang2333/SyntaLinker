

import pandas as pd

f = pd.read_csv("src-train.csv", "r")
data = list(f["src"])



f2 = open("src-train", "w")
for i in data:
	f2.write(i)
	f2.write("\n")

f2.close()
