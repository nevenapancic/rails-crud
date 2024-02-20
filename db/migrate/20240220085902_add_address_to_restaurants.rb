class AddAddressToRestaurants < ActiveRecord::Migration[7.1]
  def change
    # if forget active record migrations rails to read documentation
    # rails guides active record migration page
    # search of add new column
    # add_column :name_of_table, :name_of_column, :data_type

  add_column :restaurants, :address, :string
     # after this go in terminal and run rails db:migrate
  end
end

# Methods to be used in change
# add_column
# change_column
# rename_column
# remove_column
# add_reference

# Rails DB tasks
# rails db:drop - Drop the database (lose all your data!)
# rails db:create - Create the database with an empty schema
# rails db:migrate - Run pending migrations on the database schema
# rails db:rollback - Revert the last migration
# rails db:reset - Drop database + create tables found in schema.rb
