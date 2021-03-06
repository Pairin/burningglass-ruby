require 'burning_glass/version'

require 'burning_glass/util/oauth_helper'
require 'burning_glass/util/string_helper'
require 'burning_glass/util/requester'

require 'burning_glass/results'
require 'burning_glass/errors'
require 'burning_glass/options'
require 'burning_glass/client'

require 'burning_glass/criteria/pagination'

require 'burning_glass/actions/gettable'
require 'burning_glass/actions/relatable'

require 'burning_glass/api_resource'
require 'burning_glass/insight'
require 'burning_glass/explorer'

module BurningGlass

  class << self

    def client
      @client ||= BurningGlass::Client.new(opts)
    end

    def opts
      @opts ||= Options.new
    end

    def configure
      clear
      yield(opts)
      client
    end

    def clear
      @opts = nil
      @client = nil
    end

  end

end
