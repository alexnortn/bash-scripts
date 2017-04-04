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

	for f in *.pdf; do convert -density 300 -trim $f -quality 100 jpg2/${f%.*}-%04d.jpg; done

---


Exploded view

for f in *.pdf;
	do convert $f jpg/${f%.*}-%04d.jpg;
done

---

Explanation

For all the files in a directory of the specified type, convert file from multipage-pdf to jpg; place converted filed in sub-directory <jpg/> using name of parent file ${f%.*} + 4 digit padded page number -%04d

High Quality Flags: -density 300 -trim | -quality 100


3. Automate Portfolio Site Image Resize --> { *.jpg, *.png, *.gif } with imagemagick

---
	
Usage
cd into assets/images/projects/<project>
run from terminal as bash script

	for project in */; do
		rm -rf $project/retina
		rm -rf $project/standard

		mkdir $project/retina
		mkdir $project/standard

		path=$project"hi-res"

		for f in $path/*.{jpg,png,gif}; do
			filename="${f##*/}"
			echo $filename
			
			convert $f -resize 50% $project"retina"/$filename
			convert $f -resize 25% $project"standard"/$filename
		done
	done

---

Explanation

Convert high resolution compressed site images (~3500px) to standard (25%) and retina (50%) views. Place in respective folders.


4. Node -> Calculate column width given margins

---

 function columnWidth(width, margin, count) { console.log( "given a table of width " + width + " containing " + count + " columns, with " + margin + " margin, resulting column width => " + Math.floor(( width - (count + 1) * margin ) / count) )}



