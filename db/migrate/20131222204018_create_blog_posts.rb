class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null:false
      t.string :post, null:false
      t.integer :category_id

      t.timestamps
    end
  end
end
