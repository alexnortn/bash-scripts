# Alex Norton 2016
# Batch resize portfolio contents for responsive delivery

#  Usage
#  cd into assets/images/projects/<project>
#  go!

for project in */
	rm -rf $project/retina;
	rm -rf $project/standard;
	rm -rf $project/low-res;

	mkdir $project/retina;
	mkdir $project/standard;
	mkdir $project/low-res;

	do for f in $project/hi-res/*.{jpg,png,gif};
		do convert $f -resize 50% $project/retina/$f;
		do convert $f -resize 25% $project/standard/$f;
		do convert $f -resize 300 $project/low-res/$f;
	done
done