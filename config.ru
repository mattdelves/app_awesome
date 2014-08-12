# config.ru
require 'lotus'

# config.ru
require_relative 'apps/backend/application'

run Lotus::Router.new {
  mount Backend::Application,  at: '/'
}

# We use an instance of Lotus::Router to mount two Lotus applications
