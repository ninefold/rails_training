Welcome to training.

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
