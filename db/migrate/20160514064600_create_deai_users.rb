class CreateDeaiUsers < ActiveRecord::Migration
  def change
    create_table :deai_users do |t|
      t.string :name, null: false
      t.references :icon, null: false, idnex: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
