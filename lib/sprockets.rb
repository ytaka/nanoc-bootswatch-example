require "less"
require "sass"
require "uglifier"
require "sprockets-helpers"
require "sprockets-sass"
require "sprockets-less"
require "nanoc-sprockets-filter"

include Nanoc::Helpers::Sprockets

Nanoc::Helpers::Sprockets.configure do |config|
  config.environment = Nanoc::Filters::Sprockets.environment
  config.prefix      = "/assets"
  config.digest      = true
end
