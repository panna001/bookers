class UsersController < ApplicationController
  def index
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
  end

  def edit
  end
end
