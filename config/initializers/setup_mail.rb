ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :tls => false,
    :address => "smtp.gmail.com",
    :enable_starttls_auto => true,
    :port => "587",
    :domain => "scoran.com",
    :authentication => :plain,
    :user_name => "davinjay@gmail.com",
    :password => "1fucker1",
  }
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.raise_delivery_errors = true
