#!/bin/bash
apk add postgresql-client
npx wait-for-pg postgres://postgres:password@db:5432
PGPASSWORD=password psql -h db -U postgres -c "CREATE DATABASE app;"
npm start