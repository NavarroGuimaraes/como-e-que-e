# Getting started

## What do you need

You need to have **Ruby** installed.
> Download on https://www.ruby-lang.org/pt/

You also need to have **Bundle** installed.
> If you don't have, follow the tutorial on https://bundler.io

## Installing

Inside the apps folder run:

``` terminal
  bundle install
```

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