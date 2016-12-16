# Alex Norton 2016
# Batch resize portfolio contents for responsive delivery

#  Usage
#  cd into assets/images/projects/<project>
#  go!

for project in */
	rm -rf $project/retina;
	rm -rf $project/standard;

	mkdir $project/retina;
	mkdir $project/standard;

	do for f in $project/low-res/*.{jpg,png,gif};
		do convert $f -resize 50% -path $project/retina/$f;
		do convert $f -resize 25% $project/standard/$f;
	done
done