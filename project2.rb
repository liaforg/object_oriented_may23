class Book

  @@on_shelf = []
  @@on_loan = []

  attr_accessor due_date

  def initialize
    @title = title
    @author = author
    @isbn = isbn
  end

  def self.create(title, author, isbn
    new_book = Book.new (title, author, isbn)
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

  def self.current_due_date
    
