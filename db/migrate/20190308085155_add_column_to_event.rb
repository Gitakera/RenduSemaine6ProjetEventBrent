class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_column :events , :validated, :boolean
  	add_column :events, :reviewed, :boolean, default: false

  end
end
