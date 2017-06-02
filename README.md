# sklearn2sql-demo

This repository contains some demos of the usage of sklearn2sql.

sklearn2sql is an ongoing development tool for generating deployment SQL code from [scikit-learn](http://scikit-learn.org/) objects.

Using sklearn2sql, it is possible to predict values from an already-fitted classifier or a regressor simply by executing some SQL code. It can be seen as an alternative to PMML-based methods to perform [In-database processing](https://en.wikipedia.org/wiki/In-database_processing).

The SQL code is produced in an agnostic way (the mechansim used does not depend on the database) and supports most widely used relational databases. 

It is designed to support all [classification and regression methods in scikit-learn](http://scikit-learn.org/stable/modules/classes.html) (SVMs, linear models, naive-bayes. decision trees, MLP, etc) , as well as transformations (PCA, imputers, scalers), feature selection, outlier detection and  and their derived objects (random forest, meta-estimators, pipelines, feature unions, ensembles,  etc). 

Roughly speaking, sklearn2sql allows one to translate a scikit learn model as a large, machine-friendly ;) SQL code that can later be executed on your favorite database.  For example, this is a [multilayer perceptron on oracle](https://github.com/antoinecarme/sklearn2sql-demo/blob/master/sample_outputs_round_4/MLPClassifier/BreastCancer/oracle/demo1_MLPClassifier_oracle.sql) , and this is a [random forest on postgresql](https://github.com/antoinecarme/sklearn2sql-demo/blob/master/sample_outputs_round_4/RandomForestClassifier/FourClass/postgresql/demo1_RandomForestClassifier_postgresql.sql) .... 

**For experimenting with sklearn2sql, please use the [sklearn2sql_heroku repository]( https://github.com/antoinecarme/sklearn2sql_heroku). This is a Heroku web service that allows you to play with your own scikit-learn models**

