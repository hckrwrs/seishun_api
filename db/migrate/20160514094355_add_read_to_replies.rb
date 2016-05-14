class AddReadToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :read, :boolean, null: false, default: false
  end
end
