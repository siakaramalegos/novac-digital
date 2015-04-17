class CreateFilmmakers < ActiveRecord::Migration
  def change
    create_table :filmmakers do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
