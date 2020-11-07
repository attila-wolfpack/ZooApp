class CreateCheckPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :check_points do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.references :track, null: false, foreign_key: true

      t.timestamps
    end
  end
end
