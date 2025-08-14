puts "Let's play a game\n\n\t3\n\t2\n\t1\n\n"

player_name = "finn"
player_health = 60
player_info = "#{player_name.capitalize}'s health is #{player_health}"
puts player_info.center(50, '*')
puts "#{player_name.capitalize.ljust(30, '.')} #{player_health} health"

wacky_string = "  \n finn \t "
puts wacky_string.strip

puts "🚀" * 25
