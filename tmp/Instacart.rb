=begin implement a shopping cart, where ultimately you can

    Add items with prices and amount in your cart.
    Then checkout and the terminal will print you the detailed receipt.
    Start with a very simple program without handling prices nor available stock, then improve it.
=end


puts "remplis ta liste de course"
print "> "

def add_cart
	shopping_cart = {
}	
	item = gets.chomp
	price = gets.chomp
	shopping_cart[item.to_sym] = price.to_i
	puts shopping_cart
end

add_cart