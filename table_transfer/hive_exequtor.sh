%sh
sql="show tables"

#Выполняет команду Hive, перенаправляет протоколы, проверяет результат.
echo "Executing Hive SQL command: $sql"

beeline -u jdbc:hive2://10.93.1.9:10000 hive hive -e "$sql" 1> hive_stderr.txt 2> hive_stdout.txt
echo "Done"