#Singleton Method Sample

#The method bestBet is defined directly on the class object Auction, in singleton-method style. A singleton method defined on a class object is commonly
#referred to as a class method of the class on which it’s defined. The idea of a class method is that you send a message to the object that is the class rather
#than to one of the class’s instances. The message bestBet goes to the class Auction, not to a particular auction.

class Auction
	def initialize(amount)
		@amount = amount
	end
	
	attr_accessor :amount
	
	def Auction.bestBet(*auctions)
		auctions.max_by(&:amount)
	end
end

a1 = Auction.new(100)
a2 = Auction.new(120)
a3 = Auction.new(150)
bestAuction = Auction.bestBet(a1,a2,a3)
puts "The auction amount that was best bet is #{bestAuction.amount}"