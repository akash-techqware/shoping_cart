class Order < ApplicationRecord
	has_many :order_id
	before_save :set_subtotal
	def subtotal
		orde_item.collect{|order_item| order_item.valid? ? (order_item.unit_price*order_item.quantity) : 0}.sum		
	end

	private
		def set_subtotal
			sel[:subtotal] = subtotal
			
		end
end
