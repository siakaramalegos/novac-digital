class AddDatesToPhysicals < ActiveRecord::Migration
  def change
    add_column :physicals, :date_label, :date
    add_column :physicals, :date_actual, :date
  end
end
