# Getting started

## What do you need

You need to have **Ruby** installed.
> Download on https://www.ruby-lang.org/pt/

You also need to have **Bundle** installed.
> If you don't have, follow the tutorial on https://bundler.io

## Installing dependencies

Inside the apps folder run:

``` terminal
  bundle install
```

## Database

Check if you already have the database, otherwise run the following command:

``` terminal
  rake db:create:all
```

And then make the migrations:

``` terminal
  rake db:mibrate
```

### PS: Check if the postgres database is running

## Start the server

After install the dependencies start the server running:

``` terminal
  rails server
```

## Executing linter

**For more information check [Rubocop | Basic usage](https://rubocop.readthedocs.io/en/latest/basic_usage/)**

For running the rubocop linter execute the following command on the root folder of the project

``` terminal
 rubocop
```

And if you want to fix the errors automatically run:

```terminal
  rubocop -a
```