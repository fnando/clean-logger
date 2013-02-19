require "logger"
require "clean_logger/version"
require "clean_logger/railtie"

module CleanLogger
  class Logger < ::Logger
    def info(message)
      return if message.include?(%[Started GET "/assets/])
      return if message.blank? && @blank_message

      @blank_message = message.blank?
      super
    end
  end
end
