module CleanLogger
  class Railtie < Rails::Railtie
    initializer "clean_logger" do |app|
      next unless Rails.env.development?
      Rails.logger = CleanLogger::Logger.new("log/development.log")
      ActionController::Base.logger = Rails.logger
      Rails.application.assets.logger = Rails.logger
    end
  end
end
