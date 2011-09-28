module Ecm
  module ContactForm
    module Generators
      class ModelGenerator < Rails::Generators::NamedBase
        desc "Generates the contact form model"
        
        argument :name, :type => :string, :default => "ContactRequest"
             
        source_root File.expand_path('../templates', __FILE__)
      
        def model_path
          File.join("app", "models")
        end
        
        def model_name
          "#{name.singularize.underscore}.rb"
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
        
        def generate_model
          template "model.rb", File.join(model_path, model_name)                
        end      
      end
    end
  end
end        
