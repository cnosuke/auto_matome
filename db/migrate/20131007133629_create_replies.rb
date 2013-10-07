class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :number, null: false
      t.string :name
      t.string :date
      t.text :text

      t.timestamps
    end
  end
end
