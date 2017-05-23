class BankAccount

attr_accessor :balance

@@interest_rate = 1.5
@@accounts = []

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += number
    amount
  end

  def withdraw(amount)
    @balance -= amount
    amount
  end

  def self.create
    my_account = BankAccount.new
    @@accounts << new_account
  end
   return BankAccount.new
  end

  total_funds=0
  def self.total_funds
    @@accounts.each do |fund|
      total_funds = fund.balance
  end
 end

  def self.interest_time
    @@account.each do |account|
    account.balance *= (1 + @interest_rate)
  end
end

end  
