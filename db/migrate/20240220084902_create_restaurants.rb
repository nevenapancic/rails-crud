class CreateRestaurants < ActiveRecord::Migration[7.1] # creates the table in data base
  def change
    create_table :restaurants do |t| #always plural and it has two colons ones below
      t.string :name
      t.integer :rating

      t.timestamps #when it is created and updated it gives timestamps
    end
  end
end

# next we create database with this command:
# rails db:migrate and we go to schema in db
# 
