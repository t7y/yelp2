
module Yelp

  class Business
    
    def initialize(hash)
      @attributes = hash
    end
        
    def location
      Yelp::Location.new(@attributes["location"])
    end
    
    def method_missing(method, *args, &block)
      raise "Unknown method: #{method}" unless @attributes.keys.include?(method)
      @attributes.fetch(method)
    end
    
  end
  
end
