class BlogPostsController < ApplicationController
  
  def index
    @all_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      flash.now[:notice] = 'Post was created'
      redirect_to '/blog_posts'
    else 
      flash.now[:notice] = "Please Enter a Title and Content" 
      render :new
    end
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.delete
    redirect_to blog_posts_path
  end
  
  def blog_post_params
    params.require(:blog_post).permit(:title, :post, :created_at, :category_id)
  end

end