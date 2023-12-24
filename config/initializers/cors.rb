Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://127.0.0.1:3000','http://127.0.0.1:4000','http://localhost:3000/simulatorvue','http://localhost:4000/simulatorvue'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
