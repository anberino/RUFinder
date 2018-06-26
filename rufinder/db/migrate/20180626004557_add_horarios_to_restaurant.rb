class AddHorariosToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :horario, :string
  end
end
