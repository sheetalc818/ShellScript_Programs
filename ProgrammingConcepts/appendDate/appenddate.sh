#!/bash/bin
for file in `ls *.log.1`
do
	baseName=`echo $file | awk -F . '{print $1}'`;
	extension=`echo $file | awk -F . '{print $2}'`;
	now=$(date +"%m%d%Y");
	echo "$file" "$baseName""-""$now"".""$extension";
done

Command=$1
$Command
        if [ $? -eq 0 ]
        then
                echo Command executed with status $?
        else
                echo Command is not valid with status $?
        fi


