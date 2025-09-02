def h1
  print "<h1>#{yield}</h1>"
end

def h2
  print "<h2>#{yield}</h2>"
end

def tag(tag_name)
  print "<#{tag_name}>"
  print yield
  print "</#{tag_name}>"
end

h1 { "Breaking News!" }
h2 { "Massive Ruby Discovered" }

tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }

puts "\nUL > LI*3:\n"

tag(:ul) do
  tag(:li) { "It sparkles!" }
  tag(:li) { "It shines!" }
  tag(:li) { "It mesmerizes!" }
end
