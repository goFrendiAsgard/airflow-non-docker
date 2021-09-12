#!/bin/bash

AIRFLOW_VERSION=2.1.3
PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
# For example: 3.6
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
# For example: https://raw.githubusercontent.com/apache/airflow/constraints-2.1.3/constraints-3.6.txt
pip install "apache-airflow[celery,cncf.kubernetes,docker]==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
pip install redis psycopg2-binary
pip freeze > airflow-requirements.txt