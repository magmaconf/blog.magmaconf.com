class AddCategoryToCrowdblogPosts < ActiveRecord::Migration
  def change
    add_column :crowdblog_posts, :category, :string
  end
end
