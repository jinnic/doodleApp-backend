class AddNewColumnToDoodles < ActiveRecord::Migration[6.0]
  def change
    add_column :doodles, :doodle_data, :json
  end
end
