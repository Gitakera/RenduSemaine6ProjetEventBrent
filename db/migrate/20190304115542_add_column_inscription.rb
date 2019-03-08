class AddColumnInscription < ActiveRecord::Migration[5.2]
  def change
  	add_column :inscriptions, :stripe_customer_id, :string
  	
  end
end
