class AddTapeformatToPhysical < ActiveRecord::Migration
  def change
    add_reference :physicals, :tape_format, index: true, foreign_key: true
  end
end
