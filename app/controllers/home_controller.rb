class HomeController < ApplicationController
  def index
    @user_count = User.count
    @post_count = Micropost.count
  end

  def about
  end

  def Rose
  end

  def contactus
  end

  def help
  end
  
end
