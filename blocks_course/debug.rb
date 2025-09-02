
def with_debugging(expected)
  puts "Running test..."
  result = yield
  if result == expected
    puts "Passed."
  else
    puts "Failed."
    puts "Expected #{expected} but got #{result}."
  end
end

with_debugging(4) { 2 + 2 }
with_debugging(5) { 2 + 2 }
