-- SQL script that creates an index idx_name_first on the table names and the forst letter of name

CREATE INDEX idx_name_first ON names(name(1));