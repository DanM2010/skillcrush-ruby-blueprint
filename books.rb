class Book
	def set_title=(title)
		@title = title
	end
	
	def get_title
		return @title
	end
	
	def set_subtitle=(subtitle)
		@subtitle = subtitle
	end
	
	def get_subtitle
		return @subtitle
	end
	
	def set_author=(author)
		@author = author
	end
	
	def get_author
		return @author
	end
	
	def set_publisher=(publisher)
		@publisher = publisher
	end
	
	def get_publisher
		return @publisher
	end
	
	def set_isbn=(isbn)
		@isbn = isbn
	end
	
	def get_isbn
		return @isbn
	end
	
	def book_details
		return "#{@title}#{if !(@subtitle.nil?) then ': ' + @subtitle else '' end} by #{@author} and published by #{@publisher}."
	end
end

a_book = Book.new
a_book.set_title = 'The Book of Ruby'
a_book.set_subtitle = 'A hands-on guide for the adventurous'
a_book.set_author = 'Huw Collingbourne'
a_book.set_publisher = 'no starch press'
a_book.set_isbn = '978-1-59327-294-4'

puts a_book.book_details