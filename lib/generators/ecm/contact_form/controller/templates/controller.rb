class <%= controller_constant_name %> < ApplicationController
  def new
    @<%= instance_name %> = <%= model_constant_name %>.new
    
    @title = I18n.t('ecm.contact_form.attributes.<%= instance_name %>.title')
  end
  
  def create
    @<%= instance_name %> = <%= model_constant_name %>.new(params[:<%= instance_name %>])
    
    if @<%= instance_name %>.deliver
      # redirect_to root_path, :notice => "Your <%= human_name %> has been delivered."
      redirect_to root_path, :notice => I18n.t('ecm.contact_form.notices.delivered', :name => <%= model_constant_name %>.model_name.human)
    else
      render :new
    end    
  end
end
