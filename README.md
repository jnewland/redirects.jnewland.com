### Redirects in the cloud?

A simple rack app built using [refraction](https://github.com/pivotal/refraction) that I host at [Heroku](http://heroku.com/) and use their custom domain support to redirect old domains around the web.

### Current Uses

    http://*/xml/atom/feed.xml -> http://feeds.jnewland.com/JesseNewland
    http://feeds.jnewland.com/* -> http://feeds.feedburner.com/*
    http://*/* -> http://jnewland.github.com/*

#### Setup

* `bundle install --path vendor/bundle --binstubs`
* Follow the [Heroku ruby setup guide](http://devcenter.heroku.com/articles/ruby)
* edit `redirects.rb` to include the redirects you need
* `./bin/heroku domains:add redirects.jnewland.com`
* update your DNS with some `CNAMES` to the `*.herokuapp.com` domain
* `git push heroku master`