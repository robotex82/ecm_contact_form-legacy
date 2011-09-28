module Ecm
  module ContactForm
    module Generators
      class LocalesGenerator < Rails::Generators::NamedBase
        desc "Generates the locale files"
        
        argument :name, :type => :string, :default => "ContactRequest"
             
        source_root File.expand_path('../templates', __FILE__)
        
        def instance_name
          name.singularize.underscore
        end
        
        def generate_locales
          template "ecm.contact_form.en.yml", "config/locales/ecm.#{instance_name}.en.yml"
          template "ecm.contact_form.de.yml", "config/locales/ecm.#{instance_name}.de.yml"
        end      
      end
    end
  end
end        
