class PostsController < ApplicationController
 # layout "blog"
 before_action :set_post, only: [:show, :edit, :destory, :update]
  def index
    @posts = Post.all
  end

  def show

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
 
      if @post.update(post_params)
        redirect_to @post
      else
        render 'edit'
      end
  end

  def destroy

      @post.destroy
     
      redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:category_id, :title, :content, :published)
  end
end
