# qa-automation-starter
Start Selenium-Cucumber-Ruby automation framework

## Setup
1. Tap the `Use this Template` button and download the qa-automation-starter repo.
2. Install Ruby 
3. Install [Bundler](https://bundler.io/):
    - Used to manage dependencies in a gemfile.
        - `gem install bundler`
4. cd into qa-automation-starter repo
5. Install Dependencies
   - Execute `bundler install`
6. Download browser drivers
    - Download the driver for your version of chrome from:
      - https://chromedriver.chromium.org/downloads
    - Once downloaded you will need add driver to your PATH 
7. With Ruby, the dependencies, and Chromedriver installed you should be able to execute the example feature file
## Executing a test:
1. Via Command Line:
    - Since Cucumber is out test executor you can call the cucumber command from within the repo to execute all tests.
        - `BROWSER='chrome' cucumber`
    - To run a specific feature file:
        - `'BROWSER='chrome' cucumber /path/to/feature/file`
2. Via Rake:
   - execute `rake name_of_rake_task`
   - example: `rake example_test`

## RSPEC-Expectations
For help on rspec expectations and the usage of expects see below:
- https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
