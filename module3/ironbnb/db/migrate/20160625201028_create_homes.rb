class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.string :city
      t.string :owner
      t.string :description
      t.string :price
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
