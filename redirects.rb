require 'sinatra'
require 'refraction'

use Refraction

Refraction.configure do |req|

  case req.path
  when false
    # other stuff
  else
    req.permanent! "http://jnewland.github.com#{req.path}"
  end

end