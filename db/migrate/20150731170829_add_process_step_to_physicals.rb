class AddProcessStepToPhysicals < ActiveRecord::Migration
  def change
    add_reference :physicals, :process_step, index: true, foreign_key: true
  end
end
