#!/bin/bash
read -r -d '' LIC<<-EOM
/*
 * Copyright (c) 2018 V Krishna Nandivada, Aman Nougrahiya, IIT Madras.
 * This file is a part of the project IMOP, licensed under the MIT license.
 * See LICENSE.md for the full text of the license.
 * 
 * The above notice shall be included in all copies or substantial
 * portions of this file.
 */
EOM
for FILE in $(find src -iname "*.java") 
do
	echo $FILE
	cp $FILE /tmp/temp.java
	echo "$LIC" > $FILE
	cat /tmp/temp.java >> $FILE
done
