# Count von Count

Simple way to save the query result into ActiveRecord.

[![Stories in Ready](https://badge.waffle.io/gzfrancisco/count_von_count.png?label=ready&title=Ready)](https://waffle.io/gzfrancisco/count_von_count)

## Description

This gem is a simple solution to have sets and records in a dynamic way over the Ruby on Rails framework.

## Getting started

### Instalation

1. In your Gemlfile write ``gem 'count_von_count'``
2. Run ``bundle install``
3. Install the files and module with ``rails generate count_von_count:install``
4. Open [localhost:3000/count\_von\_count](http://localhost:3000/count_von_count/) and create some Set's objects.
5. On your crontab run ``rake count_von_count:count`` everytime you want the Sets have a new Record.

### How it works

The main feature is have many Sets with the result storage unto Records. We just only show in the controllers and storage into the CountVonCount module.

# Authors

* [Francisco Granados](https://github.com/gzfrancisco)
* [Bernardo Pineda](https://github.com/bpineda)
