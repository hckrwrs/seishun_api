class CreateDeaiUserSexes < ActiveRecord::Migration
  def change
    create_table :deai_user_sexes do |t|
      t.references :deai_user, null: false, idnex: true, foreign_key: true
      t.references :sex, null: false, idnex: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
