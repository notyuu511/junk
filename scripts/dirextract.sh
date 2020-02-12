#!/bin/bash
#  ls | head -n 3 | xargs -d '\n' ~/etc/programs/junk/scripts/dirextract.sh ~/extract/

if [ "$#" -lt 2 ]; then
  echo "DIRECTORY DOES NOT EXIST, OR INCORRECT USAGE."
  echo "Usage: $0 EXTRACT_DIRECTORY SOURCE_DIRECTORIES >&2"
  exit 1
fi

EXTRACT_DIRECTORY=$1
shift

for args in "$@"; do
  if [[ -d "$args" ]]; then
   for tars in "$args"/*.tar; do
     echo "processing $tars \n\n"
     tar xvf "$tars"
   done

   for others in "$args"/*.{zip,7z,rar}; do
     echo "processing $others \n\n"
     7z x -o"$EXTRACT_DIRECTORY" "$others"
   done

  elif [[ -f "$args" ]]; then
    echo "processing $args \n\n"
    if [[ $args =~ \.tar ]]; then
      tar xvf "$args"
    elif [[ $args =~ \.[zip|7z|rar] ]]; then
      7z  x -o"$EXTRACT_DIRECTORY" "$args"
    fi
  fi
done
