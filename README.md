Welcome to training.

## Git

- A distributed version control system.
- You can edit code on the plane, commit it, test it and then merge it with everyone elses code when you land.

Messing with a git repository.

    mkdir test
    cd test
    git init
    echo "Hello world" > file.txt
    git add .
    git commit
    echo "Hello world again" >> file.txt
    git diff
    git status
    git add file.txt
    git commit
    git log
    echo "Goodbye" >> file.txt
    git diff
    git status
    git add file.txt
    git commit
    git log
    git checkout <SHA OF COMMIT>
    git checkout master
    git log -p
    git checkout -b test-branch
    git checkout master

Make sure you play with creating a github repository.

## Setup

    bundle install
    cp config/database.yml.sample config/database.yml

Update file with your config.

    rake db:setup
    rails server

Open http://localhost:3000/products

## Database

    rails dbconsole

## Migrations

    rails generate migration add_active_to_products

Add migration.

    rake db:migrate

## Rake

    rake -T

List all rake tasks in the system that have a description.

- db:setup - setup the database from scratch
- db:reset - drop and recreate/setup the database from scratch
- routes - list all routes

Rake tasks go in lib/tasks.

## Seed

    rake db:seed

_Make sure you write your seed files so that they can be re-run on a database and it won't add duplicate data._

## Assets

Asset pipeline is a way for rails to combine, minify and compress your assets so that the user gets the fastest experience. It provides dependency management for asset files and provides simple tools that get run when you deploy your application.

    rake assets:precompile

## Debugging

    rails console

_rails console production_ runs console using the production environment.

    rails dbconsole


## Rspec

Update gem file.

    rails generate rspec:install
    mkdir spec/models
    mkdir spec/controllers
    rake db:test:prepare

Running specs

    rspec
