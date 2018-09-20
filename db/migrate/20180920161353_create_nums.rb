class CreateNums < ActiveRecord::Migration[5.2]
  def change
    create_table :nums do |t|

      t.timestamps
    end
  end
end
