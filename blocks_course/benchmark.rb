require 'benchmark'

elapsed_time = Benchmark.realtime do
  1000000.times { |i| i * i }
  sleep 1
end

puts "It took #{elapsed_time} seconds to complete."

def time_it(name)
    puts "Running #{name}..."
    start_time = Time.now
    yield
    puts "It took #{Time.now - start_time} seconds to complete."
end

time_it("Sleepy code") do
  sleep 1
end
