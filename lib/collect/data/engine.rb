module Collect
  module Data

  class Engine < Rails::Engine

    initialize "collect-data.load_app_instance_data" do |app|
      Collect::Data.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "collect-data.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end
  end

end