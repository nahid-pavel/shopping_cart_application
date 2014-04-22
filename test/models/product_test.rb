require 'test_helper'
fixture :products

class ProductTest < ActiveSupport::TestCase
  
  test "Products attributes must not be empty" do
    
	 product =Product.new
	 assert product.invalid?
	 
	 assert product.errors[:title].any?
	 assert product.errors[:description].any?
	 assert product.errors[:image_url].any?
     assert product.errors[:price].any?
  
  end
  
  test "Product Price must be positive" do
    
	 product =Product.new(title: "Product", description:"This is the product", image_url:"pavel.jpg")
     
	 
	 product.price = -1
	 assert product.invalid?
	 assert_equal["must be greater than or equal to 0.01"]
	 product.errors[:price]
	 
	  
	  
     product.price = 0
	 assert product.invalid?
	 assert_equal["must be greater than or equal to 0.01"]
	 
	 product.errors[:price]
	 
	 
	 product.price = 1
	 assert product.valid?
	 
  end
  
  
  def new_product(image_url)
  
    product = Product.new (title: ​"My Book Title"​, description: ​"yyy"​,price: 1, image_url: image_url)
	
	
  end
  test "image url" do
    ok =%w{ fred.jpg fred.png fred.gif FRED.jpg  FRED.png FRED.gif  http://a.b.c/x/y/z/fred.gif }
	
	bad = ​%w{ fred.doc fred.gif/more fred.gif.more }​
	
   ok.each do |name|
	
	  assert new_product(name).valid?, "#{name} should be valid"
	
	end
	
	bad.each do |name|
	
	  assert new_product(name).invalid? ,"#{name} should not be valid"
	
	end
	 
  end
  
  test "title should be unique"
    
	 product =Product.new( title: products.(:ruby).title,
	                         description: ​"yyy"​,
​ 	
                            price: 1,
​ 	
                           image_url: ​"fred.gif"​)
     
    assert product.invalid?
	
	assert_equal["products title already been taken"],
	product.errors[:title]
  
  end
end
