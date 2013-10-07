class AddNewsIdToRes < ActiveRecord::Migration
  def change
    add_column :res, :news_id, :integer
  end
end
