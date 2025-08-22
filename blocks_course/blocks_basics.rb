puts "Let's start mastering Ruby blocks!"

1.upto(5) do |iteration|
  puts "#{iteration} situp"
  puts "#{iteration} pushup"
  puts "#{iteration} chinup"
end

1.step(9, 2) do |count|
  puts "#{count} situp"
  puts "#{count} pushup"
  puts "#{count} chinup"
end
