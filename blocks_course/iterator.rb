def n_times(number)
  1.upto(number) do |count|
    yield(count)
  end
end

n_times(5) do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end
