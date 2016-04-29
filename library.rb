class Catalogue
	def set_name=(name)
		@name = name
	end
	
	def get_name
		return @name
	end
	
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
	
end
	
class Book < Catalogue 
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
		return "#{@title}#{if !(@subtitle.nil?) then ': ' + @subtitle else '' end} by #{@author} and published by #{@publisher}"
	end
end

class StockRecord < Book
	def set_stock_level=(qty_in_stock)
		@stock_level = qty_in_stock
	end
	
	def get_stock_level
		return @stock_level
	end
	
	def set_location=(location)
		@location = location
	end
	
	def get_location
		return @location
	end
	
	def stock_status
		if (@stock_level > 0)
			return " has #{@stock_level} copies available, located at: #{@location}."
		else
			return " is currently out of stock"
		end
	end

end

a_book = StockRecord.new
a_book.set_name = 'Central Library'
a_book.set_title = 'The Book of Ruby'
a_book.set_subtitle = 'A hands-on guide for the adventurous'
a_book.set_author = 'Huw Collingbourne'
a_book.set_publisher = 'no starch press'
a_book.set_isbn = '978-1-59327-294-4'
a_book.set_stock_level = 4
a_book.set_location = '4.003.31'

puts a_book.book_details + a_book.stock_status