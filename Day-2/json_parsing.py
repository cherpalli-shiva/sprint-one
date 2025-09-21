import json

# Load JSON from file
with open("config.json", "r") as f:
    config = json.load(f)

print(config["name"])

config["debug"] = False

with open("config.json", "w") as f:
    json.dump(config, f, indent=4)