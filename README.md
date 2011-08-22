### Redirects in the cloud?

A simple rack app using [refraction](https://github.com/pivotal/refraction) and [Heroku](http://heroku.com/) to redirect things around the web.

#### Setup

* `bundle install --path vendor/bundle --binstubs`
* Follow the [Heroku ruby setup guide](http://devcenter.heroku.com/articles/ruby)
* edit `redirects.rb` to include the redirects you need
* `./bin/heroku domains:add redirects.jnewland.com`
* update your DNS with some `CNAMES` to the `*.herokuapp.com` domain
* `git push heroku master`