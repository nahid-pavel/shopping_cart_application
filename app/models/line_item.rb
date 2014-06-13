class LineItem < ActiveRecord::Base
 
 belongs_to :order
 
 
 belongs_to :product
 belongs_to :cart1

 def total_price
 
    product.price*quantity
 
 
 end
 


 
end
