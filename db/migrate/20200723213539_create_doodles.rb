class CreateDoodles < ActiveRecord::Migration[6.0]
  def change
    create_table :doodles do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :user_id
      t.json :doodle_data

      t.timestamps
    end
  end
end
