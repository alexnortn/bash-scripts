# Alex Norton 2016
# Resize a single portfolio image
# Expects a single hi-resolution image to be available in the project directory
# 	Note: Current max-width 1000px (standard) --> 2000px (retina) as of (1.10.17)
#  	Note: Be sure to compress the hi-res image in PS first!
# Assumes existing directory structure:
#	/project
#		/hi-res  <-- Will look here for image
#		/low-res
#		/retina
#		/standard

#  Usage
#  cd into app/assets/images/projects/<project>/hi-res
#  run <this-script> <file.ext>

f=$1

if [ -z "$f" ]
	then
		echo "Error: Don't forget to reference a file!"
else
	convert $f -resize 50% ../retina/$f;
	convert $f -resize 25% ../standard/$f;
	convert $f -resize 300 ../low-res/$f;
fi