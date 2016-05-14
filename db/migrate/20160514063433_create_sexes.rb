class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
