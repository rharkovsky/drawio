select f.primaryTitle, f.averageRating, f.startYear 
from dim_Characters c join title_facts f on c.tconst=f.tconst
where characters= '["James Bond"]' and f.titleType = 'movie'
order by startYear
go

select f.averageRating, f.startYear 
from dim_Characters c join title_facts f on c.tconst=f.tconst
where characters= '["James Bond"]' and f.titleType = 'movie'
order by startYear
go

select avg(f.averageRating), f.startYear 
from dim_Characters c join title_facts f on c.tconst=f.tconst
where characters= '["James Bond"]' and f.titleType = 'movie'
Group by f.startYear
Order by startYear
go

select top(1000) * from title_facts