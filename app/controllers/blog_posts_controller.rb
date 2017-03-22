class BlogPostsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:name, :age)
  end
  

end
