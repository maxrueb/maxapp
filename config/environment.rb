# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['app54709579@heroku.com'],
  :password => ENV['15202486@zu'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}