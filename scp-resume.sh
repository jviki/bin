#! /bin/sh

# Usage:
# scp a b c remote:dir
# ^C
# ...
# scp-resume a b c remote:dir

rsync --partial --progress --rsh=ssh "$@"
