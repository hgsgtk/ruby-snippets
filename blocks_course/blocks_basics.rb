puts "Let's start mastering Ruby blocks!"

1.upto(5) do |iteration|
  puts "#{iteration} situp"
  puts "#{iteration} pushup"
  puts "#{iteration} chinup"
end

name = "Micheal"
1.step(9, 2) do |count; name|
  name = "John"
  puts "#{name} #{count} situp"
  puts "#{name} #{count} pushup"
  puts "#{name} #{count} chinup"
end
puts name
