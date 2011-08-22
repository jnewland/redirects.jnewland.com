require 'sinatra'
require 'refraction'

use Refraction

Refraction.configure do |req|

  case req.path
  when '/atom.xml'
    if req.env['HTTP_USER_AGENT'] !~ /FeedBurner|FeedValidator/
      req.found! 'http://feeds.feedburner.com/JesseNewland'
    end
  else
    req.permanent! "http://jnewland.github.com#{req.path}"
  end

end