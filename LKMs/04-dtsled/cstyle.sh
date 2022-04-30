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

	# Translation from Chinese to English
	
	sed -i 's/Copyright © ALIENTEK Co., Ltd. 1997-2029. All rights reserved.//g' $TARGET
	sed -i 's/Copyright © ALIENTEK Co., Ltd. 1998-2029. All rights reserved.//g' $TARGET
	sed -i 's/文件名/File/g' $TARGET
	sed -i 's/作者/Author/g' $TARGET
	sed -i 's/左忠凯/Luyao Han <luyaohan1001@gmail.com>/g' $TARGET
	sed -i 's/版本/Version/g' $TARGET
	sed -i 's/描述/Description/g' $TARGET

	sed -i '/其他.*/d' $TARGET
	sed -i '/论坛.*/d' $TARGET
	sed -i '/日志.*/d' $TARGET
	sed -i 's/。/./g' $TARGET
	sed -i 's/0 成功;其他 失败/0 -- success; otherwise failed./g' $TARGET
	sed -i 's/、/./g' $TARGET

	sed -i 's/驱动入口函数/driver entry function/g' $TARGET
	sed -i 's/驱动出口函数/driver exit function/g' $TARGET
	sed -i 's/输入/ input/g' $TARGET
	sed -i 's/输出/ output/g' $TARGET
	sed -i 's/最后/ last/g' $TARGET
	sed -i 's/实验/ experiment/g' $TARGET
	sed -i 's/事件/ event/g' $TARGET
	sed -i 's/节点/ node/g' $TARGET
	sed -i 's/无效/ invalid/g' $TARGET
	sed -i 's/无/ None/g' $TARGET
	sed -i 's/按键/ key/g' $TARGET
	sed -i 's/名字/ name/g' $TARGET
	sed -i 's/数量/ amount/g' $TARGET
	sed -i 's/数组/ array/g' $TARGET
	sed -i 's/上报/ report/g' $TARGET
	sed -i 's/数据/ data/g' $TARGET
	sed -i 's/类/ class/g' $TARGET

	sed -i 's/创建/create /g' $TARGET
	sed -i 's/添加/add /g' $TARGET
	sed -i 's/删除/delete /g' $TARGET
	sed -i 's/设备/device /g' $TARGET
	sed -i 's/初始化/initialize /g' $TARGET
	sed -i 's/注册/register /g' $TARGET
	sed -i 's/号/number /g' $TARGET
	sed -i 's/注销/unregister /g' $TARGET
	sed -i 's/定义/define /g' $TARGET
	sed -i 's/打开/open /g' $TARGET
	sed -i 's/关闭/close /g' $TARGET
	sed -i 's/取消/cancel /g' $TARGET
	sed -i 's/数据长度/ length of data/g' $TARGET
	sed -i 's/释放/release /g' $TARGET
	sed -i 's/驱动/driver /g' $TARGET
	sed -i 's/读取/read /g' $TARGET
	sed -i 's/开启/turn on /g' $TARGET
	sed -i 's/函数/function/g' $TARGET
	sed -i 's/时钟/clock/g' $TARGET
	sed -i 's/中断/interrupt/g' $TARGET
	sed -i 's/定时器/timer/g' $TARGET
	sed -i 's/结构体/struct/g' $TARGET
	sed -i 's/设置/configure /g' $TARGET
	sed -i 's/获取/get /g' $TARGET
	sed -i 's/使能/enable /g' $TARGET
	sed -i 's/状态/status/g' $TARGET
	sed -i 's/映射/mapping/g' $TARGET
	sed -i 's/使用方法/ usage/g' $TARGET
	sed -i 's/成功/ success/g' $TARGET
	sed -i 's/失败/ failure/g' $TARGET

	sed -i 's/MODULE_AUTHOR("zuozhongkai");/MODULE_AUTHOR("Luyao Han <luyaohan1001@gmail.com>");/g' $TARGET
	sed -i 's_/\*\(.*\)\*/_//\1_' $TARGET 	# convert from multi-line comment to single-line comment.

	

	echo - Done -
	exit 0
else
	echo 'No file has been specified. Usage -- ./cstyle <file-name>.c'
	exit 0
fi


