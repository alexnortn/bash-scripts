# bash-scripts
Simple bash scripts for improving the daily struggle.

---


1. Automate AI

---
	
Copy below

	for f in *.svg; do  mv "$f" "${f/ui-icons-v8_/}"; done

---


Exploded view

for f in *.svg;
	do  mv "$f" "${f/ui-icons-v6_/}";
done

---

Explanation

For all the files in a directory of the specified type, rename (mv) file, by losing "${f}" prefix


2. Automate PDF --> JPG with imagemagick

---
	
Copy below

	for f in *.pdf; do convert $f jpg/${f%.*}-%04d.jpg; done

---


Exploded view

for f in *.pdf;
	do convert $f jpg/${f%.*}-%04d.jpg;
done

---

Explanation

For all the files in a directory of the specified type, convert file from multipage-pdf to jpg; place converted filed in sub-directory <jpg/> using name of parent file ${f%.*} + 4 digit padded page number -%04d