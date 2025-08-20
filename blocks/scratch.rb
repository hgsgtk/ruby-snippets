10.times do
  puts "Howdy!"
end

10.times { puts "Howdy!" }

5.upto(8) do |number|
  puts "#{number} alligator"
end

5.upto(8) { | number| puts "#{number} alligator" }

3.downto(1) do |number|
  puts "launch in #{number}"
end

3.downto(1) { |number| puts "launch in #{number}"}

words = %w[dog zebra elephant chimpanzee]

words.each do |word|
  puts word.length
end

words.each { |word| puts word.length }
