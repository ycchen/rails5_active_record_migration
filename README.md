# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Add bootstrap-sass and simple_form gems to Gemfile

* Generate User model
```Ruby
rails g model user first_name:string{16} last_name:string email_address:string address_line_one address_line_two address_city address_state:string{2} address_zip:string
```
* Add activerecord-import gem to Gemfile

* Generate seed.rb to import 1_000_000_000 records for testing, we will use import method from activerecord-import gem
```ruby
  #/db/seeds.rb

```

* Run generate for simple_form and integrated with bootstrap

```Ruby
  rails g simple_form:install --bootstrap

  ===============================================================================

  Be sure to have a copy of the Bootstrap stylesheet available on your
  application, you can get it on http://getbootstrap.com/.

  Inside your views, use the 'simple_form_for' with one of the Bootstrap form
  classes, '.form-horizontal' or '.form-inline', as the following:

    = simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|

===============================================================================
```

* Run generate scaffold for User

```ruby
rails g scaffold User first_name last_name email
```
