import
json

v config

irom pathlib

t Path

project_root
Path(_file_).resolve().parents[2]
print(project_root)
config_file project_root / "config" / "config.json"
printtpr
with open(config_file, "r") as f:

F application.log

config json.load(f)

10
print("Application:", config["application"])
print("Environment:", config["environment"])
print("Timeout:", config["timout"])
