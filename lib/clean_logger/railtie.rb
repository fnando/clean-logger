module CleanLogger
  class Railtie < Rails::Railtie
    initializer "clean_logger" do |app|
      next unless Rails.env.development?
      Rails.logger = CleanLogger::Logger.new("log/development.log")
      Rails.application.assets.logger = Logger.new("/dev/null")
    end
  end
end
