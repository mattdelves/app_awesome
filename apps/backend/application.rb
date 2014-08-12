# apps/backend/application.rb
require 'lotus'

module Backend
  class Application < Lotus::Application
    configure do
      # Specify a root here so that load paths, etc. are relative to your microservice.
      root 'apps/backend'

      load_paths << [
        'controllers',
        'views'
      ]

      templates 'templates'

      layout :awesome

      routes do
        get '/', to: 'home#index', as: :home
      end
    end
  end
end

# All code under apps/backend/{controllers,views} will be loaded
