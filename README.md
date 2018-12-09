# Inspector Code

## Task

Using the Github API, build a web application which allows a user to enter the username of a Github account and be presented with a best guess of that profile's favourite programming language.

## Technologies

Ruby

Sinatra

HTTParty

HTML

RSpec

Capybara

Rubocop


## User Stories

```
As a User
So I can start my search
I want to be able to input a username

As a User
So that I can know someone's favourite programming language
I want to be able to see a results page

As a User
So that I can search multiple users
I want to be able to go back to the main screen

As a User
So that I know a username doesn't exist
I would like to be shown an error message
```
## Instructions

Clone this repo and navigate to the directory and install gems:
```
$ git clone
$ cd inspector-code
```
Install gems:
```
$ bundle install
```
Run tests:
```
rspec
```
Run linter:
```
rubocop
```
Run the server:
```
rackup -p 3000
```
View in your web browser:
```
http://localhost:3000
```

## Approach
#### The Plan
1. Decide which technologies to use:

  - I chose Ruby and Sinatra to make a full web application, as I hadn’t used these technologies to make a call to an API before. I decided to use the HTTParty gem to fetch data from the Github API as the docs made it seem easy to use and reading about Ruby’s built in net/http library, it often was critiqued for being a bit ‘outdated’. I would use RSpec and Capybara for testing as I am familiar with them.


2. Write the User Stories.

3. Class Diagram to work out how parts of my program would interact with each other (see below).

4. Play around with the Github API, using Postman and Curl to access the data.

5. Setup project with the required Gems I had decided to use.

6. TDD first feature, repeat!

#### The Highs
I really enjoyed this task as I got to explore working with API’s, something I wanted to do more of during my time at Makers but unfortunately didn’t have loads of time to do so it was great being able to find out more about how to interact and work with one.
I also feel a lot more confident now mocking out API calls and testing for the correct behaviour in my unit tests after I researched about this during the task.

#### The Struggles
The hardest part was mocking out that API call! I found it challenging because I wasn’t completely comfortable doing this whilst at Makers and we didn’t have a lot of exposure to this. However, as I mentioned, I learnt a lot whilst doing it and really happy with being able to mock out the correct HTTP call and parsing the json response.


## Class and Request/Response Cycle Diagram

![Imgur](https://i.imgur.com/N3toKul.png)

## Interface

Homepage:

![Imgur](https://i.imgur.com/HWOvpx4.png)

Results Page:

![Imgur](https://i.imgur.com/CCRKspT.png)

Invalid Page:

![Imgur](https://i.imgur.com/AogCZri.png)
