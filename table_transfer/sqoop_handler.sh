%sh
tabName=$1
dbName=$2

#Запускает sqoop, перенаправляет протоколы, проверяет результат.
echo "Importing table: $tabName  into database: $dbName by sqoop."

hdfs dfs -rm -r -f-skipTrash $tabName >hdfs_stderr.txt 2>hdfs_stdout.txt

export JAVA_HOME="/usr"

/usr/lib/sqoop/bin/sqoop import --connect 'jdbc:mysql://10.93.1.9/skillfactory' \
    --username mysql --password arenadata --hive-import -m 1 --table $tabName --hive-table $dbName.$tabName 1> sqoop_stderr.txt 2> sqoop_stdout.txt
echo "Done"