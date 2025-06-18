require 'timeout'

begin
  Timeout.timeout(5) do
    # Simulate a long-running operation
    sleep 10
    puts "Task completed successfully within the timeout"
  end
rescue Timeout::Error
  puts "Task timed out! It took longer than expected."
end


begin
  Timeout.timeout(5) do
    # Simulate a long-running operation
    sleep 3
    puts "Task completed successfully within the timeout"
  end
rescue Timeout::Error
  puts "Task timed out! It took longer than expected."
end