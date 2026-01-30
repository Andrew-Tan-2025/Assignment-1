-- Clears list 
--DELETE FROM authors;
--DELETE FROM comments;
--DELETE FROM submissions;
--DELETE FROM subreddits;


-- Copy from .csv files to fill tables
\copy authors FROM './authors.csv' WITH (FORMAT csv, HEADER true)

\copy comments FROM './comments.csv' WITH (FORMAT csv, HEADER true)

\copy submissions FROM './submissions.csv' WITH (FORMAT csv, HEADER true)

\copy subreddits FROM './subreddits.csv' WITH (FORMAT csv, HEADER true)

