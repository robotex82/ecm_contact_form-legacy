module Ecm
  module ContactForm
    module Generators
      class CreateGenerator < Rails::Generators::NamedBase
        desc "Generates a contact request form with the given CamelCasedName"
        
        argument :name, :type => :string        

        def generate_locales
          generate "ecm:contact_form:locales", name
        end

        def generate_model
          generate "ecm:contact_form:model", name
        end
        
        def generate_controller
          generate "ecm:contact_form:controller", name
        end     
        
        def generate_views
          generate "ecm:contact_form:views", name
        end
      end
    end
  end
end

