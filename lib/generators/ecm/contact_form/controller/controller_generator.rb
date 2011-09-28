module Ecm
  module ContactForm
    module Generators
      class ControllerGenerator < Rails::Generators::NamedBase
        desc "Generates the contact form controller"
        
        argument :name, :type => :string, :default => "ContactRequest"
             
        source_root File.expand_path('../templates', __FILE__)
      
        def controller_path
          File.join("app", "controllers")
        end
        
        def controller_name
          "#{name.pluralize.underscore}_controller.rb"
        end

        def controller_constant_name
          "#{name.pluralize.camelize}Controller"
        end
        
        def model_constant_name
          name.singularize.camelize
        end
        
        def instance_name
          name.singularize.underscore
        end
        
        def human_name
          name.singularize.underscore.humanize
        end
        
        def generate_views
          template "controller.rb", File.join(controller_path, controller_name)                
        end      
      end
    end
  end
end        
