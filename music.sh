#~/bin/bash
if [ "$#" -ne 2 ] ||  ! [ -d "$1" ] || ! [ -d "$2" ] ; then
  echo "DIRECTORY DOES NOT EXIST, OR INCORRECT USAGE."
  echo "Usage: $0 SRC_DIRECTORY EXTRACT_DIRECTORY" >&2
  exit 1
fi
for file in "$1"; do 
  7z x -o$2 $file
done
