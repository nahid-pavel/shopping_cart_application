class RenameDatabaseColumn < ActiveRecord::Migration
  def self.up
   
    rename_column(:line_items,:cart_id,:cart1_id)
  
  end
  
  def self.down
     
	
  
  end
end
