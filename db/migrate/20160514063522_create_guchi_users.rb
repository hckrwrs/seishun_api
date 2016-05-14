class CreateGuchiUsers < ActiveRecord::Migration
  def change
    create_table :guchi_users do |t|
      t.string :name, null: false
      t.references :icon, index: true, foreign_key: true, null: false
      t.references :sex, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
