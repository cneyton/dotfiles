#!/bin bash


supertrail(){	for var in $(git status  -suno | grep '^ M' | egrep '\.c$|\.h$|Makefile$|\.sh$' | awk '{print $2}') ; do if [ -f $var ] ; then echo $var ; sed -i 's/[ \t]*$//' $var ; fi ; done }


function gren(){
	echo "$1 -> $2 ?" 
	read
	for var in $(ggf $1) ; do echo $var ; sed -i 's/'$1'/'$2'/g' $var ; done
}


function grenb(){
	echo "$1 -> $2 ?" 
	read
	for var in $(ggf "\b$1\b") ; do echo $var ;  sed -i 's/\b'$1'\b/'$2'/g' $var ; done
}


function ggb(){
	git grep --color=always -n "\b$1\b"
}


function lv() { vim $(echo $1 | sed 's/:/ +/g' | sed 's/.$//g' | awk '{print $1" " $2}');} 
