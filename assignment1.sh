# Hello, World!!

set -e

export PGPASSWORD=postgres

# Need to grab this, bc we are going to unzip the csv files folder
sudo apt update
sudo apt install unzip

# DOWNLOAD ALL CSV FILES TO ROOT OF ASSIGNMENT
# authors.csv
#curl -L -o authors.csv "https://www.dropbox.com/scl/fo/espd9jgl8owm9j6jg3ymo/AO5i_y7fzUxmSnQfu0b_0fQ/authors.csv?rlkey=y0hfra01ux0bg6i2xue6ytka1&dl=0"

# comments.csv
#curl -L -o comments.csv "https://www.dropbox.com/scl/fo/espd9jgl8owm9j6jg3ymo/AO9m6AiVoPJcawa7uxXYh5Q/comments.csv?rlkey=y0hfra01ux0bg6i2xue6ytka1&dl=0"

# submissions.csv
#curl -L -o submissions.csv "https://www.dropbox.com/scl/fo/espd9jgl8owm9j6jg3ymo/AOe-Ju_iwWeZ7J4HiNqk7QY/submissions.csv?rlkey=y0hfra01ux0bg6i2xue6ytka1&dl=0"

# subreddits.csv
#curl -L -o subreddits.csv "https://www.dropbox.com/scl/fo/espd9jgl8owm9j6jg3ymo/AJJtP1wpnqc7gcgh4Yaklwk/subreddits.csv?rlkey=y0hfra01ux0bg6i2xue6ytka1&dl=0"


psql -h 127.0.0.1 -p 5432 -U postgres -d postgres -f schema.sql
psql -h 127.0.0.1 -p 5432 -U postgres -d postgres -f load.sql
psql -h 127.0.0.1 -p 5432 -U postgres -d postgres -f constraints.sql
