class AddIndexesToUsers < ActiveRecord::Migration[5.1]
  def change
    # this will execute add indexes in one SQL statement
    change_table :users, bulk: true do |t|
      t.index :first_name
      t.index :last_name
      t.index :email_address
      t.index :address_zip
    end
    # this will execute add index as individual SQL statement
    # change_table :users do |t|
    #   t.index :first_name, algorithm: :inplace
    #   t.index :last_name, algorithm: :inplace
    #   t.index :email_address, algorithm: :inplace
    #   t.index :address_zip, algorithm: :inplace
    # end
  end
  # def up
  #   add_index :users, :first_name
  #   add_index :users, :last_name
  #   add_index :users, :email_address
  #   add_index :users, :address_zip
  # end
  #
  # def down
  #   remove_index :users, :first_name
  #   remove_index :users, :last_name
  #   remove_index :users, :email_address
  #   remove_index :users, :address_zip
  # end

  # def change
  #   add_index :users, :first_name
  #   add_index :users, :last_name
  #   add_index :users, :email_address
  #   add_index :users, :address_zip
  # end
end
