require 'sinatra'
require 'logger'
require 'mongo'
require 'json'

include Mongo

class Comments < Sinatra::Base
  # We'll use the standard ruby logger to log params to a file.

  logger             = Logger.new("comments.log")
  original_formatter = Logger::Formatter.new

  # mongo_client = MongoClient.new("localhost", 27017)
  # db           = mongo_client.db("mercedescoyle-site")
  # possibly make collection post id for ease of getting data out
  # collection   = db.collection("comments")
  
  # logger.formatter = proc { |severity, datetime, progname, msg|
  #   original_formatter.call(severity, datetime, progname, msg.dump)
  # }

  # for now, display output and log to file.
  # make sure all params are in json form
  # also make sure to validate the params
  # to make sure they are valid and safe

  get '/comment' do
    if params.nil?
      "Please enter a comment"
    else
      logger.info("#{params}")
      doc = params
      # collection.insert(params)
      "#Hello World! #{params}"
    end
  end

end