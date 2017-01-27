# Alex Norton 2016
# Convert .mov videos --> supported web formats [webm, mp4]
# Output videos in <project>/videos/*

# Assumes existing directory structure:
#   ~/Documents/Github/Portfolio/assets/images/projects/<project>
#	/project
#		/hi-res
#		/low-res
#		/retina
#		/standard
#		/videos <-- Will place video here

#  Usage
#  ~/Documents/Github/bash-scripts bash webtomove.sh <project-name> <path-to-video(s)>

project=$1 #ex. "Museum"
videoInputPath=$2 #ex. "Museum/Videos/museum-ipad/output/"

if [ -z "$project" ] || [ -z "$videoInputPath" ]
	then
		echo "Error: Don't forget to select a project + video path!"
else
	projectPath="/Users/alexnortn/Documents/Github/Portfolio/assets/images/projects/$1/videos"
	videoInputPath2=/Users/alexnortn/Google\ Drive/Dropbox\ \(MIT\)/Portfolio/$2
	videoInputPath3=("$videoInputPath2"/*.mov)

	# For all .mov files in <path>
	for video in "${videoInputPath3[@]}"
		do
			videoName=$(basename "$video" ".mov")
			echo $video
			echo $videoName
		
			# Create  mp4
			ffmpeg -an -i "$video" -vcodec libx264 -pix_fmt yuv420p -profile:v baseline -level 3 $projectPath/$videoName.mp4
		
			# Create webm
			ffmpeg -i "$video" -vcodec libvpx-vp9 -b:v 1M -acodec libvorbis -threads 8 -tile-columns 6 -frame-parallel 1 $projectPath/$videoName.webm
	done
fi