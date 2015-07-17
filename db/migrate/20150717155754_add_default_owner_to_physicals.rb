class AddDefaultOwnerToPhysicals < ActiveRecord::Migration
  def up
    change_column_default :physicals, :owner_id, 1
  end

  def down
    change_column_default :physicals, :owner_id, nil
  end
end
