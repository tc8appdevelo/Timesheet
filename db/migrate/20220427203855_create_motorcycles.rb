class CreateMotorcycles < ActiveRecord::Migration[6.1]
  def change
    create_table :motorcycles do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
