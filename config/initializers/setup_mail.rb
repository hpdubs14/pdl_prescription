require "development_mail_interceptor"

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => ENV['GMAIL_SMTP_USER'],
  :user_name            => ENV['GMAIL_SMTP_USER'],
  :password             => ENV['GMAIL_SMTP_PASSWORD'],
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

# Localhost email testing
# Do this in the shell you’re using to run the Rails server:
# 
# $ export GMAIL_SMTP_USER=username@gmail.com
# $ export GMAIL_SMTP_PASSWORD=yourpassword

# Remote host
# $ heroku config:add GMAIL_SMTP_USER=username@gmail.com
# $ heroku config:add GMAIL_SMTP_PASSWORD=yourpassword

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?