class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name

      t.timestamps
    end

    add_reference :check_points, :animal, index: true, null: false
  end
end
