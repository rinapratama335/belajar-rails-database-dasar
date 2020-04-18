class SessionsController < ApplicationController
  def new
  end

  def create
    # render plain: params.inspect

    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)
    if user
      if user.authenticate(password)
        session[:user_id] = user.id
        redirect_to books_path, notice: 'Kamu berhasil login'
      else
        redirect_to new_session_path, notice: 'Username / Password Salah'
      end
    else
      redirect_to new_session_path, notice: 'Username / Password Salah'
    end
  end
end
