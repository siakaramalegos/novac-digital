class RemoveFormatFromPhysical < ActiveRecord::Migration
  def change
    remove_reference :physicals, :format, index: true, foreign_key: true
  end
end
