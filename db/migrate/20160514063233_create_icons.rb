class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string :name, null: false
      t.text :value, null: false

      t.timestamps null: false
    end
  end
end
