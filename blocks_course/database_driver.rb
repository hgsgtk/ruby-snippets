class DatabaseDriver
  def initialize(database, user, password)
    @database = database
    @user = user
    @password = password
    @connected = false
  end

  def connect
    # connects to database
    @connected = true
    puts "Connected to #{@database} as #{@user}."
  end

  def disconnect
    # disconnects from database
    @connected = false
    puts "Disconnected."
  end

  def execute(sql)
    raise "Not connected!" unless @connected
    puts "Executing #{sql}..."
    # executes SQL
  end

  def self.open(database, user, password)
    driver = DatabaseDriver.new(database, user, password)
    driver.connect

    return driver unless block_given?

    begin
      yield driver
    ensure
      driver.disconnect
    end
  end

  def transactionally
    begin_transaction
    yield
    commit_transaction
  rescue => e
    rollback_transaction
  end

  def begin_transaction
    puts "Beginning transaction..."
  end

  def commit_transaction
    puts "Committing transaction..."
  end

  def rollback_transaction
    puts "Rolling back transaction..."
  end
end

DatabaseDriver.open("my_database", "admin", "secret") do |driver|
  driver.transactionally do
    driver.execute("SELECT * FROM ORDERS")
    driver.execute("SELECT * FROM USERS")
  end
end

driver = DatabaseDriver.open("my_database", "admin", "secret")
driver.execute("SELECT * FROM ORDERS")
driver.execute("SELECT * FROM USERS")
driver.disconnect
