# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.authors = "Roberto Vasquez Angel"
  s.name = "ecm_contact_form"
  s.summary = "Provides easy generation of contact forms"
  s.description = "Insert EcmContactForm description."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.4"
  s.add_dependency('mail_form')
  s.add_dependency('ecm_core')
  s.add_dependency('ecm_frontend')  
end
