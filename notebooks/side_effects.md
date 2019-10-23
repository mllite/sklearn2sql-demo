This project had some impacts on related software : databases bug reports, python drivers, etc. These bugs have all been discovered  when running sklearn2sql tests/benchmarks.


### Hive 

Does not support recursive CTEs. Impact limited to Recursive Neural Networks. One issue was filed :

https://issues.apache.org/jira/browse/HIVE-16725

### Impala 

Does not support recursive CTEs. Impact limited to Recursive Neural Networks. One issue was filed :

https://issues.apache.org/jira/browse/IMPALA-7904

### MariaDB 

MariaDB was very responsive by correcteing all bugs reported by sklearn2sql. CTE support was rudimentary and at the end everything was perfect after the necessary corrections were made

https://jira.mariadb.org/browse/MDEV-12440

https://jira.mariadb.org/browse/MDEV-12990

https://jira.mariadb.org/browse/MDEV-13730

https://jira.mariadb.org/browse/MDEV-13780

https://github.com/PyMySQL/mysqlclient-python/issues/187


### MonetDB

Does not support recursive CTEs. Impact limited to Recursive Neural Networks. One issue was filed :

https://www.monetdb.org/bugzilla/show_bug.cgi?id=6702

### MS SQL Server

Some issues with complex decision trees rendering in SQL. SQL Server does not support nesting CASE expressions beyond 10 levels. Not sure if MS is aware of this yet (bug reporting is not easy!!)

https://social.technet.microsoft.com/Forums/en-US/c938b78d-8089-4a23-87fe-6ff8b8f5e42e/case-expressions-may-only-be-nested-to-level-10-really-needed-in-2017-?forum=transactsql

### Teradata

One bug related to SQL reserved words was fixed. 

https://github.com/Teradata/sqlalchemy-teradata/issues/41
