class <%= controller_constant_name %> < ApplicationController
  def index
    @title = I18n.t('ecm.contact_form.attributes.<%= instance_name %>.title')
    @<%= instance_name %> = <%= model_constant_name %>.new
  end
  
  def create
    @title = I18n.t('ecm.contact_form.attributes.<%= instance_name %>.title')
    @<%= instance_name %> = <%= model_constant_name %>.new(params[:<%= instance_name %>])
    
    if @<%= instance_name %>.deliver
      redirect_to({ :action => 'index' }, :notice => I18n.t('ecm.contact_form.notices.delivered', :name => <%= model_constant_name %>.model_name.human))
    else
      render :index
    end    
  end
end
