class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
statuses = [:bronze, :silver, :gold, :platinum]
1.upto(5) do |count|
  flyers.push(Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000, statuses.sample))
end

puts 'Frequent flyers:'
frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
puts frequent_flyers

puts 'Infrequent flyers:'
infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
puts infrequent_flyers

puts "Platinum flyers:"
platinum_flyers = flyers.select { |flyer| flyer.status == :platinum }
if platinum_flyers.any?
  puts platinum_flyers
else
  puts 'None found'
end

puts 'First bronze flyer:'
first_bronze_flyer = flyers.detect { |flyer| flyer.status == :bronze }
puts first_bronze_flyer
