module Ecm
  module ContactForm
    module Generators
      class RoutesGenerator < Rails::Generators::NamedBase
        desc "Generates the contact form routes"
        
        argument :name, :type => :string, :default => "ContactRequest"
  
        
        def route_name
          name.pluralize.underscore
        end   
        
        def generate_routes
          route("resources :#{route_name}, :only => [:index, :create]")            
        end      
      end
    end
  end
end        
