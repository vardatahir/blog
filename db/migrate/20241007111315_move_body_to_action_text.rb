class MoveBodyToActionText < ActiveRecord::Migration[6.1]

  def up
    add_column :blog_posts, :content, :rich_text_area

    BlogPost.all.find_each do |blog_post|
      blog_post.update(content: blog_post.body)
    end

    remove_column :blog_posts, :body
  end

  def down
    add_column :blog_posts, :body, :text

    BlogPost.all.find_each do |blog_post|
      blog_post.update(body: blog_post.content)
    end

    remove_column :blog_posts, :content
  end
end
