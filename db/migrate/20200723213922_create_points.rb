class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.integer :line_id
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
