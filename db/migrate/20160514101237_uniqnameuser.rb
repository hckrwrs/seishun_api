class Uniqnameuser < ActiveRecord::Migration
  def change
    add_index :deai_users, :name, :unique => true
    add_index :guchi_users, :name, :unique => true
  end
end
