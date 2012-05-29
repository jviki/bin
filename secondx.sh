#! /bin/sh

# ./secondx.sh
#
# Starts a second X server on display :1.0
# with twm and xterm inside.

#XOPTS=":1 -xf86config xorg.conf"

XOPTS=":1"
DISPLAY=:1.0

tmp_script()
{
	tmpfile="$HOME/.tmpx-script"
	rm -f $tmpfile
	touch $tmpfile

	while [ -n "$1" ]; do
		echo $1 >> $tmpfile
		shift
	done

	echo $tmpfile
}

run_twm()
{
	twm=`which twm`
	app="xterm"

	if [ -n "$1" ]; then
		app="$1"
	fi

	runscript=`tmp_script "$twm &" "$app"`

	xinit $runscript -- $XOPTS
}

#startx -- $XOPTS
run_twm "$@"
