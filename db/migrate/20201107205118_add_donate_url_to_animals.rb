class AddDonateUrlToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :donate_url, :string
  end
end
