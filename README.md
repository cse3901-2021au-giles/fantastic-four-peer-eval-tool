# The Fantastic Four Ruby on Rails Peer Evaluation Tool 
### Presentation slides: https://docs.google.com/presentation/d/1F4h16ghYXiEByEcU4T6D1vn2caOcpUMC5zxarMMxZqU/edit?usp=sharing
### Deployed to https://fantastic-four-peer-eval-tool.herokuapp.com

This peer evaluation tool is based off of
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## Purpose

The Peer-Evaluation-Tool is for use in a project-based class for students assess work performed by various team members. Instructors assign students as members of teams that are assigned to projects. Instructors initiate student evaluations and can view the progress of student evaluations. Students can view anonymous peer evaluations conducted by team members.

## Capabilities & Features
 * Teachers can send out peer evaluations for students to complete.
 * Peer evaluations can be checked from a specific teacher perspective.
 * Studens can view their own peer evaluations left by other students but reviewee name is anonymous.
 * Instructor has ability to create users, projects, teams, and initiate peer reviews.
 * Extensive login capabilities:
    * Different levels of users: system, teacher, student.
        * Views and capabilities distinct between level of user access.
            * Only system level user allowed to change all user parameters.
    * Views distinct to user logged in based on user.
    * Security feature: user information (ID, passwords, etc) is not passed in plain text and/or not visible (hidden HTML) within webpage source code as needed.
    * Gravitar image upload available.


## Building the app

To get started with the app, clone the repo.

Install the needed gems and dependencies
```
$ yarn add jquery@3.5.1 bootstrap@3.4.1
$ bundle install --without production
$ bundle exec rails webpacker:install
```

After performing bundle exec command above type 'y' for everything EXCEPT environment.js. For environment.js, type 'n'.

Next, migrate the database:
```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

From browser: Navigate to: localhost:3000 (or otherwise location given by server)

## Development Notes
 * Extensive Rails associations utilized to ensure Rail's principle of convention over configuration.
 * Utilized Rubocop to ensure correct Ruby language use.
 * Ensured proper use of accessibility features to maximize availability of application to users.

## How to use site
### Student
* Create user account

### Teacher / System admin
* It is possible for the Teacher to create student accounts in advance
* In ~/projects, create project
* In ~/projects, in row of desired project, create team
* In ~/teams, in row of desired project, add users by selecting show and add members as needed
* In ~/teams, in row of desired project, select 'initiate evaluations' to allow members to complete peer evaluations

### Student
* In ~/peer_evaluations, complete student evaluations

It is then possible for teachers to review status of the peer evalutions and for students to view anonymous reviews left by peers.

## Testing

Our group approached testing in two ways. First, we utilized the rails testing to ensure the project was compilng correctly. Second, we took a front-end approach and ensured all buttons and functionality of the peer evaluation tool were working correctly. The following section, will give a walk through of this process.

### Navigation Bar

* Click on `OSU PEER EVALUATION`
    * Expected: Home Page
    * Actual: Home Page
    * Test: Success
* Click on `Home` 
    * Expected: Home Page
    * Actual: Home Page
    * Test: Success
* Click on `My Evals`
    * Expected: Peer Evaluations Page
    * Actual: Peer Evaluations Page
    * Test: Sucess
* Click on `My Teams`
    * Expected: My Teams Page
    * Actual: My Teams Page
    * Test: Sucess
* Click on `Class`
    * Expected: Dropdown menu with 3 options:
        * Students
        * Projects
        * Teams 
    * Actual: Dropdown menu with 3 options:
        * Students
        * Projects
        * Teams 
    * Test: Sucess
* Click on `Administration`
    * Expected: Dropdown menu with 1 options:
        * Users 
    * Actual: Dropdown menu with 1 options:
        * Users
    * Test: Sucess
* Click on `Account`
    * Expected: Dropdown menu with 3 options:
        * Profile
        * Settings
        * Logout 
    * Actual: Dropdown menu with 3 options:
        * Profile
        * Settings
        * Logout 
    * Test: Sucess


For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
