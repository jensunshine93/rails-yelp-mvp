class CreateDiningplaces < ActiveRecord::Migration[7.1]
  def change
    create_table :diningplaces do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end
