class CreateCart1s < ActiveRecord::Migration
  def change
    create_table :cart1s do |t|

      t.timestamps
    end
  end
end
