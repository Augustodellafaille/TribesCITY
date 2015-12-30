class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to @user, notice: 'Your profil was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  private

  def user_params
     params.require(:user).permit(:host_id, :guest_id, :lastname, :firstname, :username, :age, :phone_number, :guest_max, :biography, :city, :zip_code, :street, :number)
  end

end
