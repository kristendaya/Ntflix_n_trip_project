use testdb;

CREATE TABLE netflix (
 seq        INT NOT NULL AUTO_INCREMENT,
 filename    VARCHAR(255),
 graph_data longblob,
  PRIMARY KEY(seq)
);