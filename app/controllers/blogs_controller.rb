class BlogsController < ApplicationController
  def new
   @blog = Blog.new
  end

  def create
   @blog = Blog.new(blog_params)
   @blog.save
   redirect_to blogs_path
  end

  def index
   @blogs = Blog.all
  end

  def show
   @blog = Blog.find(params[:id])
  end

  def edit
   @blog = Blog.find(params[:id])
  end

  def update
   @blog = Blog.find(params[:id])
   @blog.update
   redirect_to blogs_path
  end

  def destroy
   @blog = Blog.find(params[:id])
   @blog.destroy
   redirect_to blogs_path
  end

  private
  def blog_params
  params.require(:blog).permit(:title,:body)
  end
end
