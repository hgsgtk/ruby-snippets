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

if __FILE__ == $0
  flyers = []
  statuses = [:bronze, :silver, :gold, :platinum]
  1.upto(5) do |count|
    flyers.push(Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000, statuses.sample))
  end
  1.upto(5) { |count| flyers.push(Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000, statuses.sample)) }

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
