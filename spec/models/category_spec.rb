require 'spec_helper'

describe Category do
  
  it { should have_valid(:name).when("category1", "Category", "cool posts") }
  it { should_not have_valid(:name).when("", nil) }
  it { should validate_uniqueness_of(:name) }

  it { should have_many(:blog_posts) }
end 
