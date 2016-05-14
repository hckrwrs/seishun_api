class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content, null: false
      t.boolean :is_guching, null: false
      t.references :guchi, null: false, idnex: true, foreign_key: true
      t.references :guchi_user, null: false, idnex: true, foreign_key: true
      t.references :deai_user, null: false, idnex: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
