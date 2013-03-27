module CleanLogger
  class Logger < ::Logger
    def info(*args, &block)
      message = args.first

      return super unless message
      return if message.include?(%[Started GET "/assets/])
      return if message.include?(%[Served asset])
      return if message.blank? && @blank_message

      @blank_message = message.blank?
      super
    end
  end
end
