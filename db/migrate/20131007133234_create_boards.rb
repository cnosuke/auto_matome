class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
