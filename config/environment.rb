# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            "rails.portal.assignment@gmail.com",
    password:             "railsportalassignment",
    authentication:       :plain,
    enable_starttls_auto: true
}
