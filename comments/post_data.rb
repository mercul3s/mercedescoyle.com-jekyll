require 'sinatra'
require 'logger'

# We'll use the standard ruby logger to log params to a file.

logger = Logger.new("comments.log")
original_formatter = Logger::Formatter.new
# logger.formatter = proc { |severity, datetime, progname, msg|
#   original_formatter.call(severity, datetime, progname, msg.dump)
# }

# for now, display output and log to file.
get '/comment' do
  logger.info("#{params}")
  "#Hello World! #{params}"
end