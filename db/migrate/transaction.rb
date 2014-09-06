class CreateUsers < ActiveRecord::Migration
  def change
    create_table :accounts, force:true  do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
