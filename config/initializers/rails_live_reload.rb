if defined?(RailsLiveReload)
  RailsLiveReload.configure do |config|
    # config.url = "/rails/live/reload"

    # Default watched folders & files
    # config.watch %r{app/views/.+\.(erb|haml|slim)$}, reload: :always
    # config.watch %r{(app|vendor)/(assets|javascript)/\w+/(.+\.(css|js|html|png|jpg|ts|jsx)).*}, reload: :always

    # More examples:
    # config.watch %r{app/helpers/.+\.rb}, reload: :always
    # config.watch %r{config/locales/.+\.yml}, reload: :always

    # config.enabled = Rails.env.development?
  end
end
