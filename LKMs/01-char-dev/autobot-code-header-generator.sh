# File      :     autobot-code-header-generator.sh
# Author    :     Luyao Han
#	Email     :     luyaohan1001@gmail.com 
# Brief     :     This bot script automatically generate header file for codes.
# Date      :     04-08-2022
# Copyright (C) 2022-2122 Luyao Han. The following code may be shared or modified for personal use / non-commercial use.


# Check if file name is specified
if [[ ! $1 ]]; then
	echo 'Usage: ./autobot-code-head-generator.sh <file-name>'
	echo '- autobot exiting... -'
	exit 1
fi

# Check if header already exist in that file.
if [[ `grep 'Author' $1` ]]; then
	echo 'Code header already exists.'
	echo '- autobot exiting... -'
	exit 1
fi

# Add the header to the file
file=$1
author='Luyao Han'
email='luyaohan1001@gmail.com'

# -n will get rid of new line native to echo command.
echo "Please enter brief description to this file."
echo -n "> "

read brief
date=`date +%m-%d-%Y`
copyright_message='Copyright (C) 2022-2122 Luyao Han. The following code may be shared or modified for personal use / non-commercial use.'

header+="# File      :     $file\n"
header+="# Author    :     $author\n"
header+="#	Email     :     $email\n"
header+="# Brief     :     $brief\n"
header+="# Date      :     $date\n"
header+="# $copyright_message\n"

# use forward slash '/' with paragraph seems to cause problem. Use '|' instead works as well.
sed -i "1s|^|$header|" $1



