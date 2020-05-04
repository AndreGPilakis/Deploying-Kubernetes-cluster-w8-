# Express Example

This repository demonstrates the usage of Sequelize within an [Express](https://expressjs.com) application.
The implemented logic is a simple task tracking tool.

## Configuration

Configuration can be found in `config/config.js`

### Environment vaiables used to configure the application

- DB_USERNAME - username for the database server
- DB_PASSWORD - password for the database server
- DB_NAME - name of the database
- DB_HOSTNAME - hostname of the database server

## Starting App

*Without Migrations*

```
npm install
npm start
``
**With Migrations**

```
npm install
node_modules/.bin/sequelize db:migrate
npm start
```

This will start the application and create an sqlite database in your app dir.
Just open [http://localhost:3000](http://localhost:3000).

## Running Tests

### Unit tests

There are [Mocha](https://mochajs.org) based unit test in the application. 
You can run them by calling `npm run test-unit`

### Linting

Linting is implemented with ESLint. 
Run the lint tests by calling `npm run test-lint`

### Code coverage

Code coverage is implemented using NYC. Unit tests will generate a report that can be parsed by NYC to validate that the codecoverage is 90% or higher

Run the parsing by calling `npm run test-coverage`

### Integration tests

Integration tests are implemented using Mocha as well. 

Start the database server

```bash
docker-compose up -d 
```

Create the database

```bash
psql -h localhost -U postgres -c "CREATE DATABASE servian;"
```

Run the tests

```bash
npm run test-integration
```


### End to end test

E2E tests are implemented using QaWolf and requires a database backend to execute properly.

Run docker-compose like in the integration tests to execute the test successfully

Set the environment variable `QAW_HEADLESS` to true to run the e2e in headless mode

https://www.qawolf.com/