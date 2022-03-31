# README

🥁 This repo houses the Back End application for Rüm, a listing and rental platform for musician practice space. 

🎹 Hosts can list rooms they have available for musicians to practice in. Rooms include available amenities (wifi, water fountain, restroom, etc.) They also include a list of instruments physically available in the space - most commonly, upright or grand pianos, drumsets, large percussion instruments, etc.

🎺 Musicians can then book the room and pay a fee to rent the space, per day. 

Rüm is our Capstone Project, the final project in our curriculum at Turing School of Software and Design. 

## 🔗 Relevant Links: 
- [Front End Repository](https://github.com/Rum-Project/ruum-fe)

- [Back End (API only, deployed on Heroku)](https://powerful-lake-27669.herokuapp.com/)

- **[Front End Heroku production site](https://ruumproject.herokuapp.com/)**

## 🔧 Setup

Ruby v 2.7.2

Rails v. 5.2.7

GraphQL v. 1.11.6

RSpec (Rails) 5.0.0

1. Clone this repo to your local machine.

2. Navigate to the repo directory and `bundle install`

3. Create and seed your local database with `rails db:{create,migrate,seed}`

Database schema: 

![Schema image](https://github.com/Rum-Project/ruum-be/blob/main/Ruum-Schema-03292022.png)

4. To run the server locally, use `rails s`

## Documentation

This readme provides the info you need for downloading and running the app. 

We also have a [Postman Collection](https://turing-school-student-plan-team.postman.co/workspace/Ruum-GraphQL-Queries~34255ed0-8e6c-43ca-88d4-4a6739413d1c/collection/19380151-a8dc235c-f462-4cc8-8ef9-3c96d15755c3?action=share&creator=2635401) set up to test all the possible GraphQL queries (happy and sad paths). _ _To view the Postman Collection, you must first be a member of the Turing School Team._ _

Please note that, per the instructions for this project, **Rüm does not include robust authentication or authorization capabilities.** You can simply browse as a pre-created musician or host by logging in as either "Musician" (no password necessary) or "Host" (again, no password).

## Tests

Run the RSpec test suite with `bundle exec rspec`

## Deployment

When you have merged new functionality to main, ensure you have privileges to deploy to the Heroku remote (contact any team member to get set up). 
You can deploy with `git push heroku main`.
