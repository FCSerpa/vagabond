class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
