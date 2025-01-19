# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4200', 'https://localhost:4200'

    resource '*',
             headers: :any,
             methods: [:get, :post, :put, :patch, :delete, :options],
             expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
             max_age: 600
  end
end
