class AddPublishedAtToBlogPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :blog_posts, :Published_at, :date_time
  end
end
