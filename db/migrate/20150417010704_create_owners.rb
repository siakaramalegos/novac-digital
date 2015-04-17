class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :owner_name
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone

      t.timestamps null: false
    end
  end
end
