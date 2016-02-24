class AddDetailsToUsers < ActiveRecord::Migration
  def change
    
    add_column :users, :phone ,:string
    add_column :users, :address ,:string
    add_column :users, :occupation ,:string
  end
end
