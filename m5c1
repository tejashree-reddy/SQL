--Create Functions

create function get_movie_count(story_type varchar(50))
returns int
language plpgsql
as
$$
declare
   movie_count integer;
begin
   select count(*) 
   into movie_count
   from hollywood
   where story= story_type;
   
   return movie_count;
end;
$$;

------------------******************------------------------


--Select distinct story from hollywood
select get_movie_count('comedy');
select get_movie_count('tragedy');

create function get_movies_in_the_year(enter_year int)
returns int 
language plpgsql
As
$$
declare movie_count int;
begin
select count(movie_name)
into movie_count
from hollywood
where year_of_release=enter_year;
return movie_count;
end;
$$;
--Select distinct year_of_release from hollywood
select get_movies_in_the_year(2010)
----------------*************-------------------

create  function get_film (
  p_pattern varchar
) 
	returns table (
		film_title varchar,
		film_release_year int
	) 
	language plpgsql
as $$
begin
	return query 
		select
			movie_name,
			year_of_release
		from
			hollywood
		where
			movie_name like p_pattern;
end;$$

SELECT * FROM get_film ('A%');


--Create Triggers

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='hollywood'

Alter table Hollywood
Add column Updated_rating int

DROP TRIGGER rating_trigger
ON hollywood;
drop function rating_changes();

----------**********-----------------------





CREATE FUNCTION rating_changes()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL  
  AS
$$
BEGIN
	Raise Notice 'please do not insert';
END;
$$

CREATE TRIGGER rating_trigger
  before INSERT  
  ON  hollywood 
  FOR EACH ROW
  EXECUTE PROCEDURE rating_changes();
  
-- trigger rating_trigger on hollywood


insert into hollywood(updated_rating)
 values(9)


-------------------***********************---------------------

--Create and execute stored procedures


create procedure rating(R1 int,R2 int,movie varchar(50))

language plpgsql    
as $$
begin 
    update hollywood 
    set updated_rating = (R1+R2)/2
    where movie_name = movie;
    commit;
end;$$

call rating(9,8,'300');

select updated_rating from hollywood
where movie_name = '300'