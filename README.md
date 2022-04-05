# README

![languages](https://img.shields.io/github/languages/top/cuisine-odyssey/frontend_application?color=red)
![PRs](https://img.shields.io/github/issues-pr-closed/cuisine-odyssey/frontend_application)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov) <!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/contributors-6-orange.svg?style=flat)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

🥁 This repo houses the Back End application for Rüm, a listing and rental platform for musician practice space. 

🎹 Hosts can list rooms they have available for musicians to rent and practice in. Rooms include available amenities (wifi, water fountain, restroom, etc.) They also include a list of instruments physically available in the space - most commonly, upright or grand pianos, drumsets, large percussion instruments, etc.

🎺 Musicians can then book the room and pay a fee to rent the space, per day. 

Rüm is our Capstone Project, the final project in our curriculum at Turing School of Software and Design. It's the first fullstack team we've joined, including both Frontend and Backend engineers in a dream team!

## 🔗 Relevant Links: 
- [Front End Repository](https://github.com/Rum-Project/ruum-fe)

- [Back End (API only, deployed on Heroku)](https://powerful-lake-27669.herokuapp.com/)

- **[Front End Heroku production site](https://ruumproject.herokuapp.com/)**

## 🔧 Backend Setup

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

## **Contributors** ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/Henchworm"><img src="https://avatars.githubusercontent.com/u/75279942?v=4" width="100px;" alt=""/><br /><sub><b>Chris (he/him)</b></sub></a><br /><a href="https://github.com/Rum-Project/ruum-be/commits?author=Henchworm" title="Code">💻</a> <a href="https://github.com/Rum-Project/ruum-be/pulls?q=is%3Apr+author%3AHenchworm" title="Reviewed Pull Requests">👀</a>
    </td>
    
    <td align="center"><a href="https://github.com/hannahkwarren"><img src="https://avatars.githubusercontent.com/u/17674781?v=4" width="100px;" alt=""/><br /><sub><b>Hannah (she/her)</b></sub></a><br /><a href="https://github.com/Rum-Project/ruum-be/commits?author=hannahkwarren" title="Code">💻</a> <a href="https://github.com/Rum-Project/ruum-be/pulls?q=is%3Apr+author%3Ahannahkwarren" title="Reviewed Pull Requests">👀</a>
    </td>
    <td align="center"><a href="https://github.com/jacksonvaldez"><img src="https://avatars.githubusercontent.com/u/87635398?v=4" width="100px;" alt=""/><br /><sub><b>Jackson (he/him)</b></sub></a><br /><a href="https://github.com/Rum-Project/ruum-be/commits?author=jacksonvaldez" title="Code">💻</a> <a href="https://github.com/Rum-Project/ruum-be/pulls?q=is%3Apr+author%3Ajacksonvaldez" title="Reviewed Pull Requests">👀</a>
    </td>
    <td align="center"><a href="https://github.com/dkassin"><img src="hhttps://avatars.githubusercontent.com/u/76177498?v=4" width="100px;" alt=""/><br /><sub><b>David (he/him)</b></sub></a><br /><a href="https://github.com/Rum-Project/ruum-be/commits?author=dkassin" title="Code">💻</a> <a href="https://github.com/Rum-Project/ruum-be/pulls?q=is%3Apr+author%3Adkassin" title="Reviewed Pull Requests">👀</a>
    </td>
    
    
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification.
