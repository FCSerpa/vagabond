class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :name
      t.string :description
      t.integer :users_id
      t.integer :places_id

      t.timestamps null: false
    end
  end
end
