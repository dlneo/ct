class PagesController < ApplicationController
  #before_filter :authenticate_member!
  def index
    @post=Post.find(3)
    render 'posts/show'
  end
  def about
    @post=Post.find(4)
    render 'posts/show'
  end

end
