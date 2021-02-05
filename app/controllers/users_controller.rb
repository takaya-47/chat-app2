class UsersController < ApplicationController

  def edit
  end

  def update
    if User.update(user_params)
      redirect_to root_url
    else
      render 'edit' # 「:edit」でアクションを指定してもよい。
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
