class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index]
  before_action :new_post_variable, except: %i[create]

  def new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: 'Successful post'
    else
      flash.now[:alert] = 'Could not make post, please check the word count'
      render :index
    end
  end

  def index
    @posts = Post.all
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def new_post_variable
    @post = Post.new
  end

end
