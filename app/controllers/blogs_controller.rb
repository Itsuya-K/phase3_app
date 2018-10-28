class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :edit_confirm, :update, :destroy]
  before_action :login_limit, only: [:new, :edit, :show, :destroy]
  before_action :set_limit, only: [:edit, :destroy]

  def index
    @blogs = Blog.all.reverse_order
  end

  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def confirm
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    render :new if @blog.invalid?
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      ContactMailer.inform_mail(@blog).deliver
      redirect_to blogs_path, notice: "投稿しました！"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end

  def edit
  end

  def edit_confirm
    @blog.title, @blog.content = blog_params[:title], blog_params[:content]
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"投稿を削除しました！"
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :image, :image_cache)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def set_limit
    unless current_user.id == @blog.user_id then
      redirect_to blogs_path, notice:"あなたはこのツイートを編集できません！"
    end
  end

  def login_limit
    if logged_in? == false
      redirect_to new_session_path, notice:"ログインしてください！"
    end
  end
end
