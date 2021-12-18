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
- Image

## Run your tests on CircleCI
After each deployment your tests are running in Circle CI
- Image