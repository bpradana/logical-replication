\c postgres
CREATE TABLE test_table
(
    id SERIAL,
    name VARCHAR(255)
);
CREATE SUBSCRIPTION my_subscription CONNECTION 'host=172.24.2.1 port=5432 password=postgres user=slave dbname=postgres' PUBLICATION master_publication;