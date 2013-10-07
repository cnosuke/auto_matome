class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :number, null: false
      t.string :name, null: false
      t.string :date, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
