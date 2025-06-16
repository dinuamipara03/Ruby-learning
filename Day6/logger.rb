require 'logger'

# # Create a logger that logs to the console
logger = Logger.new(STDOUT)

# # Log messages at different levels
# logger.debug("This is a debug message")
# logger.info("This is an info message")
# logger.warn("This is a warning message")
# logger.error("This is an error message")
# logger.fatal("This is a fatal message")

# logger = Logger.new($stdout)
# logger.add(Logger::INFO, 'My message.', 'mung')

require "json"
logger.formatter = proc do |severity, datetime, progname, msg|
    date_format = datetime.strftime("%Y-%m-%d %H:%M:%S")
    puts JSON.dump(date: "#{date_format}", severity:"#{severity.ljust(5)}", pid:"##{Process.pid}", message: msg) + "\n"
end
logger.add(Logger::INFO, 'My message.')