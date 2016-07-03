class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.timestamp :deadline

      t.timestamps null: false
    end
  end
end
