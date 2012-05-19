#! /bin/sh

# ./index_files.sh [ <dir> | <file> ]..
#
# It is recursive.
#
# Output:
#  <hash> filename

index_dir()
{
	for f in `ls "$1"`; do
		index "$1/$f"
	done
}

index()
{
	if [ -d "$1" ]; then
		index_dir "$1"
	elif [ -f "$1" ]; then
		sha1sum "$1"
	else
		echo "Can not index $1" > /dev/stderr
	fi
}

while [ -n "$1" ]; do
	index "$1"
	shift
done
