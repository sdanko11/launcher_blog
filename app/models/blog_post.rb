class BlogPost < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :post
  belongs_to :category,
    inverse_of: :blog_posts
end