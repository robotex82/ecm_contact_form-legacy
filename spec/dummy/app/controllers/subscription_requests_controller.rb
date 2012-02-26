class SubscriptionRequestsController < ApplicationController
  def index
    @title = I18n.t('ecm.contact_form.attributes.subscription_request.title')
    @subscription_request = SubscriptionRequest.new
  end
  
  def create
    @title = I18n.t('ecm.contact_form.attributes.subscription_request.title')
    @subscription_request = SubscriptionRequest.new(params[:subscription_request])
    
    if @subscription_request.deliver
      redirect_to { :action => 'index' }, :notice => I18n.t('ecm.contact_form.notices.delivered', :name => SubscriptionRequest.model_name.human)
    else
      render :index
    end    
  end
end
