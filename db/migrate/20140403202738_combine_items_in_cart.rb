class CombineItemsInCart < ActiveRecord::Migration
  	def up
	#replace multiple items for a sinfle product in a cart with a single item
		Cart.all.each do |cart|
		#count the number of each product in the cart
			sums = cart.line_items.group(:product_id).sum(:quantity)
			sums.each do |product_id, quantity|
				if quantity > 1
					#remove individual items
					cart.line_items.where(product_id: product_id).delete_all
					#replace with a single item
					item = cart.line_itmes.build(product_id: product_id)
					item.quantity = quantity
					item.save!
			end
		end
	end
	
	def down
		#split items with quantity>1 into multiple items 
		LineItem.where("quantity>1").each do |like_item|
			#add individual items
			line_item.quantity.times do
				LineItem.create cart_id: line_item.card_id,product_id: line_item.product_id, quantity: 1
			end
			
			#remove original item
			line_item.destroy
		end
	end			
end

