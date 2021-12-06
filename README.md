# The Fantastic Four Ruby on Rails Peer Evaluation Tool

This peer evaluation tool is modeled off of
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

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
        * Test 
    * Actual: Peer Evaluations Page
    * Test: Sucess


For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
