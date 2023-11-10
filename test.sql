DROP DATABASE IF EXISTS testdb;
Create DATABASE testdb;
SHOW DATABASE;

Create TABLE test(
    ID int not null,
    testname VARCHAR(10),
    age int,
    PRIMARY Key(ID)
);

INSERT INTO test Values(11, 'Hellow', 10);

SELECT *FROM test;