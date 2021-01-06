-- SELECT basics
SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
  
  -- SECOND :

-- 1
SELECT name, continent, population FROM world

-- 2
  SELECT name
  FROM world
 WHERE population > 200000000

-- 3
 SELECT name, gdp/population 
FROM world
WHERE population  >= 200000000

-- 4
SELECT name, population/1000000
FROM world 
WHERE continent  = 'South America'

-- 5
SELECT name, population
 FROM world
 WHERE name IN ( 'France' , 'Germany' , 'Italy' )
-- 6
 SELECT name 
FROM world
WHERE name LIKE '%United%'

-- 7
SELECT name, population,area
FROM world
WHERE area > 3000000 OR population > 250000000

-- 8
SELECT name, population,area
FROM world
WHERE area > 3000000 AND population < 250000000 
OR area < 3000000  AND population > 250000000 

-- 9
SELECT name,ROUND(population/1000000,2),ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'

-- 10
SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp >= 1000000000000

-- 11
SELECT name,capital
 FROM world
 WHERE LENGTH(name) = LENGTH(capital)

-- 12
 SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) 
AND name <> capital

-- 13
SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'

-- Third:

  -- 1
  SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--  2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

  --  3
  SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

-- 4
SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject =  'Peace'

-- 5
SELECT * FROM nobel 
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989

-- 6
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

-- 7
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

-- 8
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Physics' AND yr = 1980
OR subject = 'Chemistry' AND yr = 1984

-- 9
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
AND subject NOT IN ( 'Chemistry' , 'Medicine')

-- 10
SELECT yr, subject, winner
FROM nobel
WHERE yr < 1910 AND subject =  'Medicine'
OR yr >= 2004 AND  subject =  'Literature'

-- 11
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG'

-- 12
SELECT * FROM nobel
WHERE winner = "EUGENE O\'NEILL"

-- 13
SELECT winner , yr , subject
FROM nobel
WHERE winner LIKE 'Sir%' 

-- 14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner
