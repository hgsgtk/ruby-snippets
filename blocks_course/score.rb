scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = scores.select { |score| score > 80 }
puts high_scores

low_scores = scores.reject { |score| score > 80 }
puts low_scores

puts scores.any? { |score| score < 70 }

puts scores.detect { |score| score < 70 }

scores_doubled = scores.map { |score| score * 2 }
puts scores_doubled

total_score = scores.reduce(0) { |sum, score| sum + score  }
puts total_score

puts scores.reduce(0, :+)

evens, odds = scores.partition { |score| score.even? }
p evens
p odds
