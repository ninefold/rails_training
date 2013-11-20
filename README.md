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
