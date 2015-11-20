class RemoveLabelTitleFromPhysicals < ActiveRecord::Migration
  def change
    remove_column :physicals, :label_title, :string
  end
end
