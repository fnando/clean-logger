module CleanLogger
  class Logger < ActiveSupport::Logger
    def initialize(*args)
      super
      @formatter = SimpleFormatter.new
    end

    def info(*args, &block)
      message = args.first

      return super unless message
      return if message.include?(%[Started GET "/assets/])
      return if message.include?(%[Served asset])
      return if message.include?(%[Compiled])
      return if message.blank? && @blank_message

      @blank_message = message.blank?
      super
    end
  end

  class SimpleFormatter < ::Logger::Formatter
    def call(severity, timestamp, progname, msg)
      return "" if msg.blank? && @blank_message
      @blank_message = msg.blank?
      "#{String === msg ? msg : msg.inspect}\n"
    end
  end
end
