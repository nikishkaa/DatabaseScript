-- SELECT * FROM world.country  
-- inner join world.city on country.Code = city.CountryCode
-- inner join world.countrylanguage on country.Code = countrylanguage.CountryCode;

-- SELECT * FROM country, city, countrylanguage  
-- WHERE country.Code = city.CountryCode AND country.Code = countrylanguage.CountryCode;

-- SELECT * FROM classes cl inner join computers pc on cl.idclasses = pc.idcomputers;


-- SELECT * FROM classes cl
-- WHERE EXISTS (SELECT * FROM computers pc WHERE pc.idcomputers = cl.idclasses);


-- SELECT * FROM classes cl
-- WHERE NOT EXISTS (SELECT * FROM computers pc WHERE pc.idcomputers = cl.idclasses);

