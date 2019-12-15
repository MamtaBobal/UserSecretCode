== README

# User Secret Code

This is a simple ruby on rails application with user, role and secret_code models.
There are 2 types of users: admin and non-admin. Registration of non-admin users require pregenerated secret codes.

## Dependencies
            * Ruby Version    : 2.4.1
            * Rails           : 5.1.7
            * Bootstrap
            * ActiveRecord-Import
            * RSpec

## Installation
            $ git clone https://github.com/MamtaBobal/UserSecretCode.git
            $ bundle install
            $ rake db:create
            $ rake db:migrate
            $ rake db:seed
            $ rails server

## Tests
            $ rspec

## Admin Credentials
###### Email: admin@gmail.com
###### Password: admin1
