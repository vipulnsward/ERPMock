class UsersController < ApplicationController

 before_filter :correct_user, :only => [:edit, :update]
 before_filter :authenticate, :except => [:show, :new, :create]
 before_filter :admin_user, :only => :destroy 
 

  def show
    @user = User.find(params[:id])
    @title=@user.name
  end

  def new
    @user=User.new	
  end

  def create
    @user = User.new(params[:user])
    if @user.save
    # UserMailer.registration_confirmation(@user).deliver
     sign_in @user
     flash[:success]= "Welcome to the Sample App!" 
     redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
 
  def edit
    @title = "Edit user"
  end
 
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end

 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

 private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
