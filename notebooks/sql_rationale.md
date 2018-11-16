## Why SQL Deployment ?

* SQL is a universal data language (relational algebra) with a scientific background.
* SQL Deployment occurs in the database , the closest possible to where data physically is.
* SQL is mature and evolving (A lot has changed since SQL-92 : https://modern-sql.com/)
* Training Developpers for SQL is not really needed. A lot of HR resources and trained developers are already available.
* Automatic SQL generation removes the gap between operational services (database admins, who use the model) and machine learning specialists (who build the model).
* While the model is built in a development environment to be finally used in a production environment, SQL generation can be performed in a neutral intermediate environment and tested/benchmarked before use in production.  
* SQL Deployment is easy. No need to explain or document the deployment process : simply execute some SQL code (select statement) and read the class probabiltiies in some pre-defined columns (named accordingly).
* SQL deployment is practical : you can send it by email and execute the SQL in any production environment.
* SQL is re-usable : as a developer, you can execute it from any SQL-aware programming language (java, perl, C++, python, SQL, ..., almost all ;)
* SQL is almost natural language : one can read it and check that it does what is expected.
* SQL is debuggable : one can read it and correct minor errors without difficulty.
* SQL is transparent : one can check that such or such logic is implemented, such or such sensitive column is not used for scoring etc (privacy)
* The SQL output maps perfectly with the machine learning model. For a scikit-learn model , any column that is produced with 'predict' or 'predict_proba' is present in the SQL output with a name reflecting its semantics : Decision, Proba_class0, Proba_class1, Proba_class2, etc. The same applies for regressions or outlier detection models.
* The SQL output can also be used as a table or a view to build new models (chaining) or add further output analysis (model performance etc)
* SQL makes communication and model sharing between heterogeneous platforms easier.
* SQL makes embedding Machine Learning models in an application a trivial task. Updating these models is just replacing the SQL code with a newer one within the application.
* SQL makes communication between developers of different cultures easy : an android developer can share machine learning code with a python scikit-learn developer and an R data scientist in a transparent way while using an in-memory embedded database (SQLITE for example) to evaluate the model predictions inside the application code.
