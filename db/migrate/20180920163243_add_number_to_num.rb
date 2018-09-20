class AddNumberToNum < ActiveRecord::Migration[5.2]
  def change
    add_column :nums, :number, :integer
  end
end
