class Category < ActiveRecord::Base
  belongs_to :blog_post
  validates_presence_of :name
  validates_uniqueness_of :name
end
