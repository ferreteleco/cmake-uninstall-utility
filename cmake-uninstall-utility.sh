#! /usr/bin/env bash
# Copyright (c) 2020 Andres Ferreiro Gonzalez
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# This script is intended to uninstall any CMake installed utility, by providing the script with the
# path of the file install_manifest.txt found in the /build directory of the CMake-builded project.


if ! [ $(id -u) = 0 ]; then
   echo "ERROR: The script need to be run as root." >&2
   exit -1
fi

if [[ $# -eq 0 ]];
then
  echo "ERROR: No argument provided, please specify a valid path to a install_manifest.txt file"
  exit -1
fi

# Enable exit on error
set -e

input=$1
echo "Deleting all installed files specified in $input"
if [[ -f $input ]];then
  while IFS= read -r line
    do
      if [[ -f $line ]];then
        echo "Removing $line"
        rm -f "$line"
      fi
    done < "$input"
fi
echo "Successfully uninstalled files under $input"

