class RemoveDatesFromPhysicals < ActiveRecord::Migration
  def change
    remove_column :physicals, :label_date, :datetime
    remove_column :physicals, :date, :datetime
  end
end
