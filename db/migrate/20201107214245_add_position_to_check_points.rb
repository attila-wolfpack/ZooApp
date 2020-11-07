class AddPositionToCheckPoints < ActiveRecord::Migration[6.0]
  def up
    add_column :check_points, :position, :integer

    Track.find_each do |track|
      track.check_points.order('id asc').each.with_index do |check_point, position|
        check_point.update_attribute :position, position
      end
    end

    change_column :check_points, :position, :integer, :null => false

    add_index :check_points, [:position]
  end

  def down
    remove_column :check_points, :position, :integer
  end

end
