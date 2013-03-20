require "logger"
require "clean_logger/version"
require "clean_logger/railtie"

require "clean_logger/adapters/rails3" if Rails::VERSION::MAJOR == 3
require "clean_logger/adapters/rails4" if Rails::VERSION::MAJOR == 4
