## Description
This is a application for a technical test. 

The goal is to develop a fullstack application, which can search cities stored in the database.

## Techical requirements

1. ruby version 2.7.0 and Rails version 5.x
2. use Docker and docker-compose
3. use PostgreSQL
4. use Rubocop
5. use Rspec
6. Routing and controllers automated tests

## Usage Instructions

#### Instalação/Iniciar:
* On the project's root, execute:

  `sudo docker-compose up --build`

* Go to http://localhost:3000/ to access the application.

#### Automated tests
* **In order to test the application, execute:**

  `sudo docker exec embarca_city_searcher_app bundle exec rspec`

#### Lint checker with rubocop
* **To check the code for linting issues, execute:**

  `sudo docker exec embarca_city_searcher_app bundle exec rubocop`

#### Desk checking:
* The gem 'pry' was used in the project for this purpose.

#### Using the application:
* Go to http://localhost:3000 (or http://localhost:3000/cities/search)
* You can change the State/Estado and type something in order to query the cities/Cidades

#### Evidences:

[Screencast from 2024-10-09 14-44-42.webm](https://github.com/user-attachments/assets/d61a597a-6666-496d-80ba-a8e7b5653d81)



