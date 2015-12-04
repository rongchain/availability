= Availability

This gem provides availability check for your server

#### Add to your Gemfile
```ruby
	gem 'availability', git: 'git@github.com:rongchain/availability.git'
```
#### Run `bundle install`
#### Configure
run `rails g availability install`

Then change the HTTP Basic Authentication `username` and `password` in `config/initializers/availability.rb`

```ruby
# configure basic http authorization username and password for availability check
Availability.configure do |config|
	config.username = 'username'
	config.password = 'password'
end
```
then start rails server with `rails s`

visit `http://localhost:3000/availability/server` to check server availability

visit `http://localhost:/availability/database` to check database availability


This project rocks and uses MIT-LICENSE.

