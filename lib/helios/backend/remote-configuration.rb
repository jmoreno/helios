require 'rack/remote-configuration'

require 'sinatra/base'
require 'sinatra/param'


class Helios::Backend::RemoteConfiguration < Sinatra::Base
  helpers Sinatra::Param

  def initialize(app, options = {})
    super(Rack::RemoteConfiguration.new(options))

    @configuration = Rack::RemoteConfiguration.new(options[:configuration]) rescue nil
  end

end
