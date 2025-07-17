-- Windows
pip install virtualenv
virtualenv venv
venv\Scripts\activate
pip install dbt-snowflake==1.9.0

--create dbt profile(create root dbt folder)
mkdir %userprofile%\.dbt

--Create a new DBT project
dbt init <projectname>
