#Method Missing Extensive Example
# Requirements
# Go to a online Book Store. 
# 1)Search for a book with exact name. 
# 2)Search for a book with part of a name. 
# 3)Search for a book with its contents. 
# 3)Once you get a book, search for its customers who have brought this book.
# 4)Search for related books

#search_exact_
#search_containing_
#search_content_
#search_related_

class Book
	BOOKSTORE =[]
	attr_reader :name, :contents, :customers, :related

	def initialize(bookName)
		@name = bookName
		@contents
		@customers = []
		@related = []
		BOOKSTORE << self		
	end
	
	def add_content(content)
		@contents = content
	end
	
	def add_customer(customer)
		@customers << customer
	end
	
	def add_related(book)
		@related << book
	end
	
	def show_details
		puts "Book Name: #{@name}"
		puts "Book Content: #{@contents}"
		puts "Book Customers: #{@customers}"
		puts "Book Related: #{@related}"
	end
	
	def self.show_all_details()	
		BOOKSTORE.find_all do |book|
			book.send("show_details")
		end	
	end
	
	def self.exact(bookname)	
		BOOKSTORE.find_all do |book|
			if book.name == bookname
				book.send("show_details")
			end	
		end	
	end
	
	def self.containing(bookname)	
		BOOKSTORE.find_all do |book|			
			if /#{bookname}/i.match(book.name)
				book.send("show_details")
			end	
		end	
	end
	
	def self.method_missing(m, *args)
		method = m.to_s
		if method.start_with?("all_with_")			
			 attr = method[9..-1]
			if self.public_method_defined?(attr)
					BOOKSTORE.find_all do |book|
							book.send(attr).include?(args[0])
					end
			else
					raise ArgumentError, "Can't find #{attr}"
			end	
		else
			super
		end	
	end
	
end

class BookStore	
	book1 = Book.new("Well Grounded Rubyist")
	book1.add_content("some theory here");
	book1.add_customer("vijay");
	book1.add_customer("priya");
	book2 = Book.new("Ruby Cookbook")
	book2.add_content("Lets look at a more extensive example of these techniques");
	book2.add_customer("meenu");
	book2.add_customer("vijay");
	book2.add_customer("gautham");
	book2.add_related(book1);
	book3 = Book.new("UML Distilled")
	book3.add_customer("priya");
	book3.add_content("more some thing here");
		
	#regular methods
	Book.exact("Well Grounded Rubyist");
	Book.containing("cook");

	#Using Method Missing Feature
	Book.all_with_customers("vijay").each do |book|
		puts "Vijay has purchased #{book.name}"
	end
	
	Book.all_with_name("Ruby").each do |book|
		puts "#{book.name} is matching name 'Ruby'"
	end
		
	Book.all_with_related(book1).each do |book|
		puts "#{book.name} is related to #{book1.name}"
	end
	
	Book.all_with_contents("more").each do |book|
		puts "#{book.name} has the content 'more'"
	end
	
end
