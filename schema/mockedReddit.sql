--Delete and recreate mockedReddit db if one exists
\echo 'Delete and recreate petly db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE mocked_reddit;
CREATE DATABASE mocked_reddit;
\connect mocked_reddit

\i mockedReddit-schema.sql
\i mockedReddit-seed.sql

--Delete and recreate mockedReddit test db if one exists
\echo 'Delete and recreate petly_test db?'
\prompt 'Return for yes or control-C to cancel > '

DROP DATABASE mocked_reddit_test;
CREATE DATABASE mocked_reddit_test;
\connect mocked_reddit_test

\i mockedReddit-schema.sql