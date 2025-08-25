class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

if __FILE__ == $0
  flyers = []
  1.upto(5) do |count|
    flyers.push(Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000))
  end
  1.upto(5) { |count| flyers.push(Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000)) }

  puts flyers

  flyers.each do |flyer|
    puts "#{flyer.name} - #{flyer.miles_flown} miles"
  end

  total = 0
  flyers.each do |flyer|
    total += flyer.miles_flown
  end
  puts "Total miles down: #{total}"

  promotions = {
    "United" => 1.5,
    "Delta" => 2.0,
    "Lufthansa" => 2.5
  }
  promotions.each do |airplane, bonus|
    puts "Earn #{bonus}x miles by flying #{airplane}"
  end
end
