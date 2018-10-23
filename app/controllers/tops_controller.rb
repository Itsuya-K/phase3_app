class TopsController < ApplicationController
  before_action :send_to_blogs
  def index
    render layout: false
  end

  private
  def send_to_blogs
    if logged_in? == true
      redirect_to blogs_path
    end
  end
end
