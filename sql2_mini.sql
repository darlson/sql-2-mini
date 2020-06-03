-- part 1

CREATE TABLE movie (
  movie_id serial primary key,
  title text,
	media_type_id int references media_type(media_type_id)
);

insert into movie
(title, media_type_id)
values
('Gattaca', 3),
('Voldemort and the Pesky Child', 3)

-- part 2
alter table movie
add column genre_id int references genre(genre_id)

update movie
set genre_id = 20
where movie_id = 1;

update movie
set genre_id = 22
where movie_id =2;

select title, name from movie
join genre on movie.genre_id = genre.genre_id

-- nested queries
select * from track
where genre_id in (
  select genre_id from genre
  where name in ('Jazz', 'Blues')
)

-- setting to null
select * from employee
where employee_id = 1

update employee
set phone = null
where employee_id = 1

-- querying null
select * from customer
where company IS NULL

-- distinct
select distinct country from customer

-- delete
select * from customer
where fax is null

delete from customer
where fax is null
