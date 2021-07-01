-- #2
DELETE FROM animals WHERE type = 'lion';

-- #3
DELETE FROM animals
WHERE name LIKE 'M%';

-- #4
DELETE FROM animals
WHERE age < 9;