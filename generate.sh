#! /bin/bash

echo '' > all.md
ls book/http|cat |awk '{print "cat book/http/"$0" | sed -e 1,4d  >> all.md"}' > catelog.sh
chmod +x catelog.sh

./catelog.sh

sed -e 's/\.\.\/\.\.\///g' all.md  > index.md
 
 
cp -rf images preview/
tocmd_conf -f index.md 

rm -rf aaa.md
rm -rf all.md
rm -rf index.md
rm -rf catelog.sh
