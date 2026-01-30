-- DEFINE Relationships to ESTABLISH Foreign Keys
ALTER TABLE authors
ADD CONSTRAINT author_name_u UNIQUE (name);

ALTER TABLE subreddits
ADD CONSTRAINT subreddit_name_u UNIQUE (name),
ADD CONSTRAINT subreddit_disp_u UNIQUE (display_name);

ALTER TABLE comments
ADD CONSTRAINT comments_author_fk FOREIGN KEY (author) REFERENCES authors(name),
ADD CONSTRAINT comments_subreddits_fka FOREIGN KEY (subreddit) REFERENCES subreddits(display_name),
ADD CONSTRAINT comments_subreddits_fkb FOREIGN KEY (subreddit_id) REFERENCES subreddits(name);

ALTER TABLE submissions
ADD CONSTRAINT submissions_author_fk FOREIGN KEY (author) REFERENCES authors(name),
ADD CONSTRAINT submissions_subreddits_fk FOREIGN KEY (subreddit_id) REFERENCES subreddits(name);

\dt

\d comments
