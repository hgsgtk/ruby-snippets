class SportyClient
  def post(message)
    raise "Not signed in!" unless @user
    # post message to remote service
    puts "#{@user} posted message: #{message}"
  end

  def timeline
    raise "Not signed in!" unless @user
    # get timeline from remote service
    puts "#{@user} fetched timeline..."
  end

  def sign_in(user)
    # sign in to remote service
    @user = user
    puts "#{user} signed in."
  end

  def sign_out(user)
    # sign out of remote service
    puts "#{user} signed out!"
  end

  def as_singed_in_user(user)
    sign_in(user)
    begin
      yield
    ensure
      sign_out(user)
    end
  end

  def self.open(user)
    client = SportyClient.new
    client.sign_in(user)
    begin
      yield client
    ensure
      client.sign_out(user)
    end
  end
end

client = SportyClient.new

client.as_singed_in_user("fan") do
  client.post("I love this sport!")
  # raise "Boo! Hiss!"
  client.timeline
end

SportyClient.open("fanfan") do |client|
  client.post("Ready to the new season...")
  client.post("Wayway.")
  client.timeline
end
