require 'rails/generators/migration'

module Ecm
  module ContactForm
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Generates the locales"

        source_root File.expand_path('../templates', __FILE__) 
        
        def generate_locales
          copy_file "ecm.contact_form.en.yml", "config/locales/ecm.contact_form.en.yml"
          copy_file "ecm.contact_form.de.yml", "config/locales/ecm.contact_form.de.yml"
        end   
      end
    end
  end
end        
