class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.integer :length
      t.integer :price
     
      t.timestamps
    end
  end
end
