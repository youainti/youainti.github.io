from pathlib import Path
result = Path(".").rglob("*.html")

for r in result:
    print("www.kgjk.icu/{}".format(r))
