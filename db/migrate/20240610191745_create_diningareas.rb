class CreateDiningareas < ActiveRecord::Migration[7.1]
  def change
    create_table :diningareas do |t|
      t.string :name
      t.string :address
      t.string :phonenumber
      t.integer :rating

      t.timestamps
    end
  end
end
