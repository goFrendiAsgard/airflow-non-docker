#!/bin/bash
airflow db init
airflow users create \
    --username "${INIT_USER_USERNAME}" \
    --password "${INIT_USER_PASSWORD}" \
    --firstname "${INIT_USER_FIRSTNAME}" \
    --lastname "${INIT_USER_LASTNAME}" \
    --role "${INIT_USER_ROLE}" \
    --email "${INIT_USER_EMAIL}"