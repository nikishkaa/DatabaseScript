USE world;

-- just select
-- SELECT  * FROM  world.city;

-- basic select
-- SELECT  Name, Population FROM  world.city;

-- basic select
-- SELECT  Name 'Название' FROM  world.city;

-- 
-- DESC по убыванию, ASC по возрастанию
-- SELECT  * FROM  world.city
-- ORDER BY name DESC, CountryCode

--   > >= !> <= < !< != <> =
-- NOT AND OR
-- IN LIKE DETWEEN EXISTS 

-- SELECT * FROM world.city WHERE population < 1000;
-- SELECT * FROM world.city WHERE population < 1000 AND population < 10000;
-- SELECT * FROM world.city WHERE population BETWEEN 1000 AND 10000;

-- DISTINCT ВЫВОДИТ ТОЛЬКО УНИКАЛЬНЫЕ ПОЛЯ
-- SELECT distinct CountryCode FROM world.city;

-- SELECT * FROM world.city WHERE name LIKE 'kabul';
-- % 0 и более символов
-- SELECT * FROM world.city WHERE name LIKE 'k%'; 

-- _ СТРОГО 1 символ
-- SELECT * FROM world.city WHERE name LIKE 'k___'; 

-- SELECT * FROM world.city WHERE name LIKE '[KBN]%'; 

-- SELECT * FROM world.city WHERE name IN ('London', 'berlin'); 
-- SELECT * FROM world.city WHERE CountryCode IN ('GBR', 'DEY'); 

-- SELECT DISTINCT CountryCode FROM world.city WHERE population > 5000000;
-- SELECT * FROM (SELECT DISTINCT CountryCode FROM world.city WHERE population > 5000000) as code
-- WHERE CountryCode LIKE '%a%';

-- SELECT * FROM world.city WHERE CountryCode IN (
-- SELECT * FROM (SELECT DISTINCT CountryCode FROM world.city WHERE population > 5000000) as code
-- WHERE CountryCode LIKE '%a%');

-- SELECT * FROM world.city WHERE name LIKE 'XZ%';
-- SELECT * FROM world.city WHERE EXISTS (SELECT * FROM world.city WHERE name LIKE 'Xz%');

-- SUM(item), MIN(item), MAX(item), AVG(item), COUNT(*), COUNT(item)
-- SELECT MAX(population) as 'Total' FROM world.city;
-- SELECT COUNT(population) as 'Total' FROM world.city

-- SELECT CountryCode, SUM(population) as 'Total', Count(*) as 'Count' FROM world.city
-- GROUP BY CountryCode
-- HAVING Count(*) > 200 AND Count(*) < 300
-- ORDER BY 3 DESC;