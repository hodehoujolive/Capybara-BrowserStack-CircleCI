This is an test automation project using Capybara, Rspec and a personal touch using cucumber for better code readability.
The tests are launched in CircleCI (using a docker image I built) and BrowserStack.
A report after each test run is generated with allure report.
For a fast build.

## Requirements
* Install [Ruby](https://www.ruby-lang.org/fr/documentation/installation/)
* To check the ruby version `ruby --version`
* Install Bundler, run `gem install bundler`

## Setup
* Clone the repo
* Install dependencies `bundle install`
* Update `*.config.yml` files inside the `config/` directory with your [BrowserStack Username and Access Key](https://www.browserstack.com/accounts/settings)

## Run your tests on BrowserStack
* To run a single test, run `bundle exec rake single`
* To run local tests, run `bundle exec rake local`
* To run parallel tests, run `bundle exec rake parallel`


### Notes
* You can view your test results on the [BrowserStack Automate dashboard](https://www.browserstack.com/automate)
![BrowserStack Automate Dashboard](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-18%20at%2016.41.55.png)
![BrowserStack Automate Dashboard](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-18%20at%2016.42.15.png)

## Run your tests on CircleCI
* After each deployment your tests are running in Circle CI
* I created a [docker image](https://hub.docker.com/r/jolive/rbrew/tags)to make the build much faster
![Tests Circle CI](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-18%20at%2016.43.57.png)
![Circle CI - Dashboard](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-18%20at%2016.44.15.png)

* Once the build is finished, you can access the test report in the artifacts tab.
It click on the `allure-report/index.html`
![Circle CI - Artifacts](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-20%20at%2006.39.23.png)
![Allure report](https://github.com/hodehoujolive/Livestorm_Technical_Test/blob/main/assets/Screen%20Shot%202021-12-20%20at%2006.33.36.png)

## Ressouces
* [Capybara Cheat Sheet](https://devhints.io/capybara)
* [Allure Framework](https://docs.qameta.io/allure/)
