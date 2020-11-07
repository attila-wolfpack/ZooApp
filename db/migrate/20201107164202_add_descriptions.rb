class AddDescriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :description, :string
    add_column :check_points, :description, :string
    add_column :tracks, :description, :string
  end
end
