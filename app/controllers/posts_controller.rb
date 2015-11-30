class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
     @post = Post.new
 
      respond_to do |format|
        format.html  # new.html.erb
        format.json  { render :json => @post }
      end
  end

  def edit
  end

  def create
      @post = Post.new(post_params)
 
      if @post.save
         redirect_to @post
      else
        render 'new'
      end
  end

  def update
  end

  def destroy
      @post = Post.find(params[:id])

      @post.destroy
     
      redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:category_id, :title, :content, :published)
  end
end
