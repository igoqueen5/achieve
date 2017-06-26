class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end



    #@user = User.find(@user.followers.ids, @user.followed_users.ids)
  end
