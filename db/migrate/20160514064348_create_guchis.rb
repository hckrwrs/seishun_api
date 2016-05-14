class CreateGuchis < ActiveRecord::Migration
  def change
    create_table :guchis do |t|
      t.string :content, null: false
      t.references :guchi_user, null: false, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
