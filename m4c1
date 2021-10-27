Create table hollywood(
Movie_Name VARCHAR(50),
Studio_Name Varchar(50),
Story Varchar(50),
Genre Varchar(50),
Budget numeric,
Year_Of_release INT,
Theatres_Open_Week INT,
Rotten_Tomatoes_Rating INT,
Audience_Rating INT
)

Alter table hollywood add column Profit numeric;


Alter table hollywood alter column budget type numeric(6,2);
Alter table hollywood alter column Profit type numeric(6,2);



Select * from hollywood;

select Movie_Name,Studio_Name 
from hollywood
where budget=100
;

select Movie_Name,Studio_Name 
from hollywood
where Year_Of_release=2007
;

select Movie_Name,Studio_Name 
from hollywood
where Profit>=100
;

select Movie_Name,Studio_Name 
from hollywood
where Genre= 'Action'
;

select Movie_Name, Genre
from hollywood
where Studio_Name= 'Fox'
;

--Determine the Count of rows satisfying certain condition


select count(Movie_Name) 
from hollywood 
where Studio_Name='Fox'

select count(Movie_Name) 
from hollywood 
where genre='Drama'


select genre,count(genre)
from hollywood
group by genre
order by genre


Select genre,Year_Of_release, count(movie_name)
from hollywood
group by genre,Year_Of_release
having avg(Audience_Rating)>80

--Determine average of a column

Select distinct genre from hollywood

select avg(profit)
from hollywood


--Avg num of movies released every year 
create view Number_of_releases_every_year as
Select count(movie_name) as Number_of_movies,Year_Of_release
from hollywood
group by Year_Of_release

select  avg(Number_of_movies)
from hollywood
where(Select count(movie_name) as Number_of_movies,Year_Of_release
from hollywood
group by Year_Of_release)



--Determine Sum of a column



select Year_Of_release,sum(Theatres_Open_Week)
from hollywood
group by Year_Of_release


select Year_Of_release,sum(Theatres_Open_Week)
from hollywood
group by Year_Of_release

select story,sum(Audience_Rating)
from hollywood
group by story




