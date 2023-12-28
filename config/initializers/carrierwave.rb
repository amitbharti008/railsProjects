# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
    config.storage = :file # Use the file system for storage
    # Other CarrierWave configurations can be added here

    config.asset_host = 'http://localhost:3000'
  end
  