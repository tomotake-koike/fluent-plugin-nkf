require 'fluent/filter'
require 'fluent/config/error'

module Fluent
  class Nkf < Filter
    Plugin.register_filter('nkf', self)
    config_param :opt , :string  , :default => '-Ew'

    def initialize
      super
      require 'nkf'
    end
    
    def configure(conf)
      super
    end

    def filter(tag, time, record)
      record.each do | key , val |
        if val.kind_of?(String)
          record[ key ] = NKF.nkf( @opt, val )
        end
      end
      record
    end
    
  end
end
