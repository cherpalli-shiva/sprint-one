import yaml
import os

if not os.path.exists("config.yaml"):
    # Create  a default config.yaml file
    config = {
        "Name":"Shiva Kumar Cheralli", 
        "Role":"DevOps Engineer",
        "Experience": "5-Years", 
        "Age": 26,
    }
    with open("config.yaml", "w") as f:
        yaml.safe_dump(config, f)

# Load Yaml
with open("config.yaml", "r") as f:
    config = yaml.safe_load(f)

# Write YAML
config["Role"] = "DevSecOps"
with open("config.yaml","w") as f:
    yaml.safe_dump(config, f)


print(config["Name"])
print(config["Role"])


