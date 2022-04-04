# Usage ./cstyle.sh <file.c>
# Parameter: Single .c file
# Brief: This function tidy up the typed style for a c file.
TARGET=$1

if [[ $TARGET == *.c ]]
then
	echo formatting the file \'$TARGET\'...

	# Correct format using regex
	sed -i 's/){/) {/g' $TARGET # '){' => ') {'
	sed -i 's/if(/if (/g' $TARGET # 'if(' => 'if ('
	sed -i 's/}else{/} else {/g' $TARGET # '}else{' => '} else {'

	# Line-by-line format substitution
	while read -r line;
	do 
		echo "$line"
	done < "$TARGET"


	echo - Done -
	exit 0
else
	echo false
	exit 0
fi


