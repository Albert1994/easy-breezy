class UserMailer < ApplicationMailer
  default from: 'alfaalbert1994@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_conf.subject
  #
  def signup_conf(request)
    @request = request
    mail to: 'alfaalbert1994@gmail.com', subject: "sdsda"
  end
end
