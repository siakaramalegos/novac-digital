class RemoveTypeFromDigitals < ActiveRecord::Migration
  def change
    remove_column :digitals, :type, :string
  end
end
