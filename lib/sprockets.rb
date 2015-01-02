require "less"
require "sass"
require "uglifier"
require "nanoc-sprockets"
require "nanoc-gzip-filter"

include Nanoc::Sprockets::Helper

Nanoc::Sprockets::Helper.configure do |config|
  config.environment = ::Sprockets::Environment.new(File.expand_path('.')) do |env|
    # append defaults paths (if you want to)
    Nanoc::Sprockets::Helper::DEFAULT_PATHS.each { |path| env.append_path path }
    # append extra paths
    env.append_path "content/assets"
    env.append_path "vendor/assets"
  end
  config.prefix = '/assets'
  config.digest = false
end

module Less
  class Parser
    class << self
      alias :new_original :new
    end

    def self.new(options = {})
      if options[:paths]
        options[:paths] = options[:paths].dup
      end
      new_original(options)
    end
  end
end
