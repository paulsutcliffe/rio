ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "rio.com.pe",
  :user_name            => "webmaster@rio.com.pe",
  :password             => "gruporio99",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
