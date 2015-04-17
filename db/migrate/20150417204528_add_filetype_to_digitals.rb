class AddFiletypeToDigitals < ActiveRecord::Migration
  def change
    add_column :digitals, :file_type, :string
  end
end
