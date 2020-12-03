import json


print("Started Reading JSON file")
read_file = open("data/mitarbeiterdaten.json", "r")
print("Converting JSON encoded data into Python dictionary")
dictionary = json.load(read_file)

print("Decoded JSON Data From File")
for keys in dictionary:
    print(dictionary[keys])
print("Done reading json file")

for keys in dictionary:
    for elemente in dictionary[keys]:
        if elemente == "DEr Erste":
            print("ENBENENNENENENENENENENENNEN")
            print(elemente)

read_file.close()

read_file = open("data/mitarbeiterdaten.json", "w")      

for keys in dictionary:
    for elemente in dictionary[keys]:
        if elemente == "DEr Erste":
            print("MISANTRIOP")
            dictionary[keys].append("WEITERBILDUNG")

json.dump(dictionary,read_file, indent=3)
