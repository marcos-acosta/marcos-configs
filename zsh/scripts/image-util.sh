function jpegify() {
	magick convert $1 $(basename "${1%.*}").jpg
	rm $1
}
