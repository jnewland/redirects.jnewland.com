require 'sinatra'
require 'refraction'

use Refraction

Refraction.configure do |req|

  case req.host
  when 'feeds.jnewland.com'
    req.found! "http://feeds.feedburner.com#{req.path}"
  else
    case req.path
    when '/xml/atom/feed.xml'
      req.permanent! "http://feeds.jnewland.com/JesseNewland"
    else
      req.permanent! "http://jnewland.github.com#{req.path}"
    end
  end

end