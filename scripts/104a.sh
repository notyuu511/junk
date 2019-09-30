#!/bin/sh
SDIR=ejcordov@unix.ucsc.edu:/afs/cats.ucsc.edu/courses/cmps104a-wm/ 
DEST=$HOME/media
# if given an argument, mount somewhere else
if [ "$#" -eq 1 ]; then
  DEST=$1
fi
# unmount destination with fusermount if it is mounted
if mountpoint -q "$DEST"; then
  fusermount -u "$DEST"
fi
sshfs "$SDIR" "$DEST"
