# qa-automation-starter
Start Selenium-Cucumber-Ruby automation framework

## Setup
Macbooks with M1 chips use zshell terminals by default instead of bash terminals which will lead to some discrepencies when going through installation instructions.  In addition, when installing applications look for ARM dmg installer files.
- Bash terminals use `.bash_profile` or `.bashrc` files
- Zshell terminals use `.zshrc` files
- Check what shell your terminal is using with `ps -p $$`

### Steps
1. Create a `.bash_profile`, `.bashrc`, or `.zshrc` file if you don't have one already
   - Ex: `touch ~/.zshrc`
2. For Mac users install Homebrew
   - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
3. Install RVM:
   - `\curl -sSL https://get.rvm.io | bash`
      `source ~/.rvm/scripts/rvm`
4. Install Ruby:
   - `rvm install ruby-2.7.2`
   - M1 users verify the following is in your `.zshrc` file or rvm will not work
   ```
   # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
   export PATH="$PATH:$HOME/.rvm/bin"
   [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
   ```
  - `rvm use --default ruby-2.7.2`
     - The 2.7.2 version of Ruby should now be install and set as the default version of Ruby for your
       Linux machine to confirm this type:
     - `which ruby`
  - Output should be something like the following:
     - `/Users/<user>/.rvm/rubies/ruby-2.7.2/bin/ruby`
8. Create Gemset (**Optional**)
   - `rvm gemset create some_name`
   - `rvm gemset use some_name`
      - If you want this as your default gemset in a more permanent way use the following:
         - `rvm use 2.7.2@some_name --default`
9. Install [Bundler](https://bundler.io/):
   - Used to manage dependencies in a gemfile.
      - `gem install bundler`
10. Tap the `Use this Template` to download the `qa-automation-starter` repo
11. cd into `qa-automation-starter` repo
12. Install Dependencies
    - Execute `bundler install`
13. Download browser drivers
14. Download the driver for your version of chrome from:
     - https://chromedriver.chromium.org/downloads
15. Once downloaded you will need add driver to your PATH
16. With Ruby, the dependencies, and Chromedriver installed you should be able to execute the example feature file

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
