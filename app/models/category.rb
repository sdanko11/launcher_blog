class Category < ActiveRecord::Base
  has_many :blog_posts,
    inverse_of: :categories, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
end
