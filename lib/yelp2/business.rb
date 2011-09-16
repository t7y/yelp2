
module Yelp

  class Business
    
    def initialize(hash)
      @hash = hash
    end
    
    def location
      Yelp::Location.new(@hash["location"])
    end
    
    def method_missing(method, *args, &block)
      raise "Unknown method: #{method}" unless @hash.keys.include?(method)
      @hash.fetch(method)
    end
    
  end
  
end
