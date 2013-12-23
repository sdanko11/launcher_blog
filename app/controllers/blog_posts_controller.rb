class BlogPostsController < ApplicationController
  
  def index
    @all_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def error_message
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
      if @blog_post.save
        redirect_to '/blog_posts', notice: 'Post was created'
      else 
      render :new
    end
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :post, :created_at)
  end

end