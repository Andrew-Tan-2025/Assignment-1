-- DROP TABLES IF EXISTS
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS comments CASCADE;
DROP TABLE IF EXISTS submissions CASCADE;
DROP TABLE IF EXISTS subreddits CASCADE;

-- Create ALL Tables to use
CREATE TABLE IF NOT EXISTS authors (
    id TEXT PRIMARY KEY,
    retrieved_on INT,
    name TEXT,
    created_utc INT,
    link_karma INT,
    comment_karma INT,
    profile_img TEXT,
    profile_color TEXT,
    profile_over_18 BOOL
);

CREATE TABLE IF NOT EXISTS comments (
    distinguished TEXT,
    downs INT,
    created_utc INT,
    controversiality INT,
    edited BOOL,
    gilded INT,
    author_flair_css_class TEXT,
    id TEXT PRIMARY KEY,
    author TEXT,
    retrieved_on INT,
    score_hidden BOOL,
    subreddit_id TEXT,
    score INT,
    name TEXT,
    author_flair_text TEXT,
    link_id TEXT,
    archived BOOL,
    ups INT,
    parent_id TEXT,
    subreddit TEXT,
    body TEXT
);

CREATE TABLE IF NOT EXISTS submissions (
    downs INT,
    url TEXT,
    id TEXT PRIMARY KEY,
    edited BOOL,
    num_reports INT,
    created_utc INT,
    name TEXT,
    title TEXT,
    author TEXT,
    permalink TEXT,
    num_comments INT,
    likes BOOL,
    subreddit_id TEXT,
    ups INT
);

CREATE TABLE IF NOT EXISTS subreddits (
    banner_background_image TEXT,
    created_utc INT,
    description TEXT,
    display_name TEXT,
    header_img TEXT,
    hide_ads BOOL,
    id TEXT PRIMARY KEY,
    over_18 BOOL,
    public_description TEXT,
    retrieved_utc INT,
    name TEXT,
    subreddit_type TEXT,
    subscribers INT,
    title TEXT,
    whitelist_status TEXT
);



