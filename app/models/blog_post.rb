class BlogPost < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :post
  has_many :categories
  # belongs_to :category

end
