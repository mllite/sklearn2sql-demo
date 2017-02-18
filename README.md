# sklearn2sql-demo

This repository contains some demos of the usage of sklearn2sql.

sklearn2sql is an ongoing development tool for genrating deployment SQL code from sklearn objects.

Using sklearn2sql, it is possible to predict values from an already-fitted classifier or a regressor simply by executing some SQL code. It can be seen as an alternative to PMML-based methods.

It is designed to support all classification and regression methods in scikit-learn (SVMs, linear models, naive-bayes. decision trees, MLP, etc) , as well as transformations (PCA, imputers, scalers) and their derived ovbjects (random forest, meta-estimators, pipelines, feature unions etc). 
