source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "autoprefixer-rails"
gem "bootsnap", require: false
gem "font-awesome-sass", "~> 6.1"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sassc-rails"
gem "simple_form", github: "heartcombo/simple_form"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "faker"
gem "cloudinary"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "dotenv-rails", groups: [:development, :test]
end

group :development do
  gem "web-console"

end

gem 'rspec-rails', group: [ :test ]
gem 'rails-controller-testing', group: [ :test ]
