#!/bin/bash
for FILE in $(ls *.java)
do
    #[ "$FILE" != "Declaration.java" ] && continue
	echo -e "*** Processing $FILE ***"
	NAME=$(echo $FILE | cut -f1 -d.)
	I=0
	while [ $I -le 11 ]
	do
		echo -e "\tReplacing for constructor with $(echo $I+1 | bc -l) fields."
		J=0
		PREARGS=""
		while [ $J -le $I ]
		do
			PREARGS=$PREARGS"this.n$J.parent = this;"
			let "J=J+1"
		done
		SBST="(\(\([[:alpha:]]* [[:alnum:]]*, \)\{$I\}\)[[:alpha:]]* [[:alnum:]]*) {/&$PREARGS"
		CMD="sed -i \"\" 's/public $NAME$SBST/g' $FILE"
		#echo "$CMD"
		eval $CMD
		let "I=I+1"
	done
	
	STRING="sed -ibak 's/public Declaration(\(\([[:alpha:]]* [[:alnum:]]*, \)\{2\}\)[[:alpha:]]* [[:alnum:]]*) {/&this.n0.parent = this;this.n1.parent=this; this.n2.parent=this;/g' $FILE"

done
