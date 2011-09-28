module Ecm
  module ContactForm
    module Generators
      class ViewsGenerator < Rails::Generators::NamedBase
        desc "Generates the contact form views"
        
        argument :name, :type => :string, :default => "ContactRequest"
             
        source_root File.expand_path('../templates', __FILE__)
        
        def view_path
          File.join "app", "views", name.pluralize.underscore
        end
        
        def instance_name
          name.singularize.underscore
        end       
        
        def human_name
          name.singularize.underscore.humanize
        end            
        
        def generate_views
          template "_form.html.erb", File.join(view_path, "_form.html.erb")
          template "new.html.erb", File.join(view_path, "new.html.erb")                  
        end      
      end
    end
  end
end        
