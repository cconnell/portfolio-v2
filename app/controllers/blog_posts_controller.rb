class BlogPostsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.create(blog_post_params)
    redirect_to "/blog_posts"
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    @blog_post = BlogPost.find(params[:id])

    @blog_post.update(blog_post_params)
    redirect_to blog_post_path
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    redirect_to "/blog_posts"
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :date)
  end
  

end
