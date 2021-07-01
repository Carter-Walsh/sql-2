-- #2
ALTER TABLE animals
ADD location VARCHAR(255);

-- #3
INSERT INTO animals (name, type, age)
	VALUES ('rocket', 'dog', 2);
  
INSERT INTO animals (name, type, age)
	VALUES ('sam', 'turle', 6);
  
INSERT INTO animals (name, type, age)
	VALUES ('pocket', 'cat', 4);
  
-- #4
ALTER TABLE animals
RENAME COLUMN type TO species;

-- #5
ALTER TABLE animals
ALTER species
SET DATA TYPE VARCHAR(255);