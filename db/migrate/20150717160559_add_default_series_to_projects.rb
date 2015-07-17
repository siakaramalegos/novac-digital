class AddDefaultSeriesToProjects < ActiveRecord::Migration
  def up
    change_column_default :projects, :serial_id, 1
  end

  def down
    change_column_default :projects, :serial_id, nil
  end
end
