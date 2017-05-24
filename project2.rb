class Book

  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date

  def initialize
    @title = title
    @author = author
    @isbn = isbn
  end

  def self.create(title, author, isbn)
    new_book = Book.new
    @@on_shelf << new_book
    new_book
  end


  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

  def self.browse
    @@on_shelf[rand.(@@on_shelf.length-1)]
  end

  def lent_out?
    if @@on_loan.(book) == true
      true
    end
  end


  time = Time.new
  def self.current_due_date
    time.month + 1
  end

  def borrow
    if lent_out? == true
      false
    else @due_date = Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan << (self)
      true
    end
  end

  def return_to_library
    if lent_out? == false
      false
    else
      @@on_loan.delete(self)
      @@on_shelf << (self)
      @due_date = nil
      true
    end
end

  overdue=[]
  def self.overdue
    if @due_date < Time.now
      overdue << book
    end
    overdue
  end

end
