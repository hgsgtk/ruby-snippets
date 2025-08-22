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
end
