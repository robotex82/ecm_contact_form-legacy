class SubscriptionRequestsController < ApplicationController
  def new
    @subscription_request = SubscriptionRequest.new
    
    @title = I18n.t('ecm.contact_form.attributes.subscription_request.title')
  end
  
  def create
    @subscription_request = SubscriptionRequest.new(params[:subscription_request])
    
    if @subscription_request.deliver
      # redirect_to root_path, :notice => "Your Subscription request has been delivered."
      redirect_to root_path, :notice => I18n.t('ecm.contact_form.notices.delivered', :name => SubscriptionRequest.model_name.human)
    else
      render :new
    end    
  end
end
