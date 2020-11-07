%sh
fileName=$1
hdfsDir=$2
hdfsName=$3

if [ -n "$hdfsName" ]
then
    echo "Copying $fileName into HDFS."
    hdfs dfs -mkdir -p $hdfsDir 1>hdfs_stderr.txt 2>hdfs_stdout.txt
else
    echo "Deleting $hdfsDir from HDFS."
    hdfs dfs -rm -r -f -skipTrash $hdfsDir 1>hdfs_stderr.txt 2>hdfs_stdout.txt
fi
if [ $? -eq -1 ]
then
    echo "There were errors while working with dir, check hdfs_stderr.txt"
    exit 1
else
    if [ -n "$hdfsName" ]
    then
        hdfs dfs -put -f $fileName $hdfsDir/$hdfsName 1>hdfs_stderr.txt 2>hdfs_stdout.txt
        if [ $? -eq 0 ]
            echo "Done"
            exit 0
        then
            echo "There were errors while copying, check hdfs_stderr.txt"
            exit 1
        fi
    else
        echo "Done"
        exit 0
    fi
fi