module Ecm
  module ContactForm
    class Engine < Rails::Engine
      config.to_prepare do
        # ApplicationController.helper(Ecm::ContactFormHelper)
      end  
    end
    
    def self.config(&block)
      @@config ||= Engine.config
      yield @@config if block
      return @@config
    end
  end  
end
