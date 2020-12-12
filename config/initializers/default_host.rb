# frozen_string_literal: true

Rails.application.routes.default_url_options[:host] = if Rails.env.development?
  "localhost:3000"
elsif Rails.env.test?
  "localhost:3000"
elsif Rails.env.production?
  "cgsave.com"
end

# NOTICE: http://lulalala.logdown.com/posts/5835445-rails-many-default-url-options
Rails.application.routes.default_url_options[:protocol] = "https"
