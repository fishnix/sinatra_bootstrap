# Sinatra_bootstrap  

A simple skeleton for bootstrapping a Sinatra app

### Requirements
  
- bundler 

### Why?
  
  - sometimes you need a quick Sinatra app, this gets it quicker.
  
### How?  

- git clone
- change origin (or delete .git if you don't like rev history on this bootstrap)
- `bundle install`
- `rackup -p 4567` (or for dev `shotgun config.ru`)
- `bundle exec unicorn -c config/unicorn.rb`
 
#### Examples
- init script for unicorn in examples/unicorn_sinatra_bootstrap
 
### Testing

 - `bundle exec guard`
 
### What's included?

- stuff (TODO)
 
### TODO
 - finish README

