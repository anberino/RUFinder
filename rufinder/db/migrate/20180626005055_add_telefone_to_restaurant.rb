class AddTelefoneToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :telefone, :string
  end
end
