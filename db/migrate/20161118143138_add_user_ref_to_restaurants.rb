class AddUserRefToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :users, index: true, foreign_key: true
  end
end
