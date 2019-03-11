# sklearn2sql-demo

This repository contains some demos of the usage of sklearn2sql.

sklearn2sql is an ongoing development tool for generating deployment SQL code from [scikit-learn](http://scikit-learn.org/) objects.

Using sklearn2sql, it is possible to predict values from an already-fitted classifier or a regressor simply by executing some SQL code. It can be seen as an alternative to PMML-based methods to perform [In-database processing](https://en.wikipedia.org/wiki/In-database_processing).

<span style="color:red">(**NEW**) sklearn2sql is available as a [**RESTful web service**](https://github.com/antoinecarme/sklearn2sql_heroku) on Heroku. A [sample python client](https://github.com/antoinecarme/sklearn2sql_heroku/blob/master/test_client.py) allows you to generate SQL from your own models. Your feedback is welcome.</span>

The SQL code is produced in an agnostic way (the mechansim used does not depend on the database) and supports most widely used relational databases. 

It is designed to support all [classification and regression methods in scikit-learn](http://scikit-learn.org/stable/modules/classes.html) (SVMs, linear models, naive-bayes. decision trees, MLP, etc) , as well as transformations (PCA, imputers, scalers), feature selection, outlier detection and  and their derived objects (random forest, meta-estimators, pipelines, feature unions, ensembles,  etc). 

Roughly speaking, sklearn2sql allows one to translate a scikit learn model as a large, machine-friendly ;) SQL code that can later be executed on your favorite database.  For example, this is a [multilayer perceptron on oracle](https://github.com/antoinecarme/sklearn2sql-demo/blob/master/sample_outputs_round_4/MLPClassifier/BreastCancer/oracle/demo1_MLPClassifier_oracle.sql) , and this is a [random forest on postgresql](https://github.com/antoinecarme/sklearn2sql-demo/blob/master/sample_outputs_round_4/RandomForestClassifier/FourClass/postgresql/demo1_RandomForestClassifier_postgresql.sql) .... 



## Extensions

Since the beginning of this project, some extensions have been added to support machine learning models built using tools similar to scikit-learn. The goal is to be able to generate the deployment SQL code for any kind of classification and regression model on any kind of SQL-capable database. These extensions share the same SQL generation layer used for scikit-learn.

1. A [caret2sql](https://github.com/antoinecarme/caret2sql) project has been added to support R caret models.  Some [R jupyter notebook demos](https://github.com/antoinecarme/caret2sql/tree/master/doc) are available. It supports most used R machine learning models.

2. For deep learning models (neural network models), the [keras2sql](https://github.com/antoinecarme/keras2sql) project has been added to support models built using the Keras framework with TensorFlow, Theano, and CNTK. Some demo [python jupyter notebooks](https://github.com/antoinecarme/keras2sql/tree/master/doc) are available.

3. A Heroku-based [web service](https://github.com/antoinecarme/sklearn2sql_heroku) can be used to generate SQL code for a given model. scikit-learn, keras and caret models are supported.

4. ... (wip) ...


## Supported Databases

Supoport for most popular relational databases has been added progressively. Now, sklearn2sql supports almost all the leading relational databases referenced on [DB-Engines](https://db-engines.com/en/ranking).

1. Open source databases : PostgreSQL (Just perfect !!!), MariaDB (contribued some [CTE-related bugs](https://jira.mariadb.org/browse/MDEV-12440) for this project. Very reactive team. All bugs were fixed !!!!
2. Commercial databases : Oracle, MS SQL Server, IBM DB2, Teradata (to cover 95% of the market and get real-world tests)
3. Embedded databases : SQLite (even in-memory ;). Nice for prototyping, documentation and development. Zero config. Available everywhere (on Android and iOS devices and inside jupyter notebooks ;).
4. Hadoop databases : Hive and Impala
5. Other : Firebird (low memory footprint. A stress test ;) , Monetdb (columnar, a SQL quality reminder ;)

