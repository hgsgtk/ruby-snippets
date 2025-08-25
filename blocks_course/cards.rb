cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.reverse_each do |card|
  puts "#{card.upcase} - #{card.length}"
end

scores = {
  "Larry" => 10,
  "Moe" => 8,
  "Curly" => 12
}
scores.each do |name, score|
  puts "#{name} scored a #{score}"
end
