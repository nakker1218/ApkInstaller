#!/bin/sh

dirPath=$(cd $(dirname $0); pwd)
for filePath in `find $1 -name "*.apk"`
do
  echo "Installing" $filePath 
  adb install -t $filePath
done
echo "Finish!"

if [ "$(uname)" == 'Darwin' ]; then
  /usr/bin/osascript -e 'display notification "Finish!" with title "Apk install"'
fi
