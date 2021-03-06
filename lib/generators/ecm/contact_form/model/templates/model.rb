class <%= model_constant_name %> < MailForm::Base
  attribute :fullname,  :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/

  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => I18n.t('ecm.contact_form.attributes.<%= instance_name %>.subject'),
      :to => "recipient@your-site.com",
      :from => %("#{fullname}" <#{email}>)
    }
  end
end
