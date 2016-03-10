# bash-scripts
Simple bash scripts for improving the daily struggle.

---


1. Automate AI

---
	
Copy below

	for f in *.svg; do  mv "$f" "${f/ui-icons-v6_/}"; done

---


Exploded view

for f in *.svg;
	do  mv "$f" "${f/ui-icons-v6_/}";
done

---

Explanation

For all the files in a folder of a certain type, rename (mv) file, by losing "${f}" prefix