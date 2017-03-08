# sklearn2sql-demo

This repository contains some demos of the usage of sklearn2sql.

sklearn2sql is an ongoing development tool for generating deployment SQL code from [scikit-learn](http://scikit-learn.org/) objects.

Using sklearn2sql, it is possible to predict values from an already-fitted classifier or a regressor simply by executing some SQL code. It can be seen as an alternative to PMML-based methods to perform [In-database processing](https://en.wikipedia.org/wiki/In-database_processing).

The SQL code is produced in an agnostic way (the mechansim used does not depend on the database) and supports most widely used relational databases. 

It is designed to support all classification and regression methods in scikit-learn (SVMs, linear models, naive-bayes. decision trees, MLP, etc) , as well as transformations (PCA, imputers, scalers), feature selection, outlier detection and  and their derived objects (random forest, meta-estimators, pipelines, feature unions, ensembles,  etc). 
