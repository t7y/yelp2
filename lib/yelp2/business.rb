
module Yelp

  class Business
    attr_reader :attributes
    
    def initialize(hash)
      @attributes = hash
    end
        
    def location
      Yelp::Location.new(@attributes["location"])
    end
    
    def method_missing(method, *args, &block)
      raise "Unknown method: #{method}" unless attributes.keys.include?(method.to_s)
      attributes.fetch(method.to_s)
    end
    
  end
  
end
