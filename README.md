# README

* Ruby version - 2.5.1

* System dependencies - Postgresql 10+

* Database creation

    1. Install posgresql
    2. Create user `Nanoblogs` with password `Nanoblogs`
    3. Create databases `Nanoblogs_development`, `Nanoblogs` and `Nanoblogs_test`

* Deployment instructions
    - run `$ rails server`


Conclusions (how to create rails app from scratch):

    1. $ apt install ruby-dev
    2. $ apt install postgresql-common postgresql-contrib
    3. $ gem install pg
    4. $ gem install bundler
    5. $ gem install rails
    6. check logs to see which libraries are missing
    7. install them (e.g. apt install libpq-dev) and try again
    8. $ rails new superblog -d=postgresql
    9. goto 6 and 7
    10. add "gem 'devise'" to Gemfile
    11. $ bundle install # in root directory
    12. $ rails generate devise:install
    13. goto 6 and 7: requires nodejs ($ apt install -y nodejs # maybe you need to add ppa)
    14. $ rails generate devise:install
    15. $ rails generate devise User
    16. $ sudo -u postgres createuser --interactive -P -l # create user for db
    17. $ sudo -u postgres createdb weblog # create database
    18. also create weblog_test, weblog_development
    19. databases in config/database.yml: add usernames, passwords, databases
    20. add line "local all weblog md5" to /etc/postgresql/11/main/pg_hba.conf
    21. $ rails db:migrate
    22. $ rails generate scaffold Post content:text view_count:integer
    23. $ rails generate model Comment content:text
    24. edit migration files at db/migrate/*, models files at app/models/*
    25. edit controlllers to add basic functionality
    26. edit pages to make them look pretty
