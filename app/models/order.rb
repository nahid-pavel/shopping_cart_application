class Order < ActiveRecord::Base

has_many  :line_items, dependent: :destroy


PAY_TYPES = ["Credit card", "Check", "Purchase order"]


validates :name,:address,:email,presence: true

validates :pay_type, inclusion: PAY_TYPES


def add_line_items_from_cart1(cart1)
  
  cart1.line_items.each do |item|
  
    item.cart1_id = nil
    
	line_items << item
  
  end



end


end
