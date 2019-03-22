SELECT `name` FROM `movies` WHERE year = 1995;
SELECT count(*) FROM `roles` as r INNER JOIN `movies` as m ON m.id = r.movie_id where m.name="Lost in Translation";
SELECT `first_name`, `last_name` FROM `actors` JOIN `roles` on `actors`.id = `roles`.`actor_id` JOIN `movies` on `movies`.id = `roles`.movie_id where movies.name="Lost in Translation";
SELECT `first_name`, `last_name` FROM `directors` join `movies_directors` on `directors`.id = `movies_directors`.director_id JOIN `movies` on `movies`.id = `movies_directors`.movie_id where `movies`.name = "Fight Club";
SELECT count(*) FROM movies_directors JOIN directors on movies_directors.director_id = directors.id where directors.first_name ="Clint" and directors.last_name = "Eastwood";
SELECT `name` FROM movies JOIN movies_directors on movies.id = movies_directors.movie_id JOIN directors on movies_directors.director_id = directors.id where directors.first_name ="Clint" and directors.last_name = "Eastwood";
SELECT `first_name`, `last_name` FROM `directors` JOIN directors_genres on directors.id = directors_genres.director_id where directors_genres.genre = "Horror";
SELECT `actors`.first_name, `actors`.last_name FROM `actors` JOIN roles on roles.actor_id = actors.id JOIN movies on roles.movie_id = movies.id JOIN movies_directors on movies_directors.movie_id = movies.id JOIN directors on movies_directors.director_id = directors.id WHERE directors.first_name = "Christopher " and directors.last_name = "Nolan";
s