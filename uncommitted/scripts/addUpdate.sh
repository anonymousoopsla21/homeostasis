#!/bin/bash
for FILE in $(ls *.java)
do
    #[ "$FILE" != "Declaration.java" ] && continue
	echo -e "*** Processing $FILE ***"
	NAME=$(echo $FILE | cut -f1 -d.)
	STRING="sed -e 's/f\([[:digit:]]*\) = new NodeToken("[[:print:]]*");/&f\1.parent = this;/g' $FILE"
	eval $STRING
	read
done
