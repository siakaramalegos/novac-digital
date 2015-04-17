class RemoveFilmakerFromPhysical < ActiveRecord::Migration
  def change
    remove_reference :physicals, :filmaker, index: true, foreign_key: true
  end
end
