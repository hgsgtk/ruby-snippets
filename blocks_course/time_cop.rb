require 'timeout'

Timeout.timeout(2.0) do
  sleep 1.0
  puts 'That was refreshing...'
end

def try_with_timeout(timeout)
  begin
    Timeout.timeout(timeout) do
      yield
    end
  rescue Timeout::Error
    puts "Time out!"
  end
end

try_with_timeout(2.0) do
  sleep 3.0
  puts 'That was refreshing...'
end
