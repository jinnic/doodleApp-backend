class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.integer :doodle_id
      t.string :brushColor
      t.integer :brushRadius

      t.timestamps
    end
  end
end
