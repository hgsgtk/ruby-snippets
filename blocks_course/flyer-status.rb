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

platunium_flyers, other_flyers = flyers.partition { |flyer| flyer.status == :platinum }
puts platunium_flyers, other_flyers

name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})" }
puts name_tags

totals_in_km = flyers.map { |flyer| flyer.miles_flown * 1.6 }
puts totals_in_km

total_miles = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts total_miles

total_kms = totals_in_km.reduce(0, :+)
puts total_kms
