class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :string
      t.string :address
      t.string :string
      t.string :phone
      t.string :string
      t.string :email
      t.string :string

      t.timestamps null: false
    end
  end
end
