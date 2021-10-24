# README

Hello. Welcome To G2 Crowd Team Roster Backend. This projet is intended to be used in development mode on a single machine that ports to localhost:

# How to Get Started

* Ruby version

The ruby and Rails version being used in this project: 
```
ruby '2.6.1'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
```

* System dependencies

Run bundle command to install dependencies:
```
bundle install 
```

* Database creation and initialization

Create, migrate, and seed the database with the G2 endpoint "https://coding-assignment.g2crowd.com/"
The endpoint is already stored in the seeds file to create G2 Employee Model instances in the database. 

Run the commands:
```
rails db:create
rails db:migrate
rails db:seed
```
To check to see if migrations were created, run the command:
```
rails db:migrate:status
```
Database should be good to go!
To spin the server, just run the following command
```
rails s
```
The server is configured to connect to port 3002.
Now you can start the client side app to visit and vote for the G2 Crowd Team Roster!

Here is the link to get the client side up and running on your local machine "https://github.com/jayastronomic/G2-Challenge-Client" 
It is highly suggested to get the backend up and running first, but not mandatory.




