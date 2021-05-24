# Car Sales Inventory

## Getting started

This app runs on Ruby 2.7.1 and Rails 6.0.3.7  

Detailed installation instructions can be found here:  

[Install Ruby Guide](https://www.ruby-lang.org/en/documentation/installation/)


[Install Rails](https://guides.rubyonrails.org/getting_started.html)


PostgreSQL also needs to be installed as a relational database [PostgresApp](https://postgresapp.com/)


Once the previous requirements are met. Follow the next steps:

`$ git clone <this repo url>`

`$ cd car_inventory`

`$ bundle install`


Proceed with the following:

`$ rails db:create`

`$ rails db:migrate`


And finally launch the app by concurently running `$ rails server` and  `$ clockwork ./config/clock.rb`
