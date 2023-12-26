import os
import json
from typing import Dict


path = os.getcwd()
print(path)

info = {}

with open("info.json", mode="r", encoding="UTF-8") as f:
    info: Dict = json.load(f)

with open("info.json", mode="w", encoding="UTF-8") as f:
    json.dump(dict(sorted(info.items())), f, indent=4)
