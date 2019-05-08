class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def login
    @user = User.koala(request.env["omniauth.auth"]["credentials"])
  end
end
