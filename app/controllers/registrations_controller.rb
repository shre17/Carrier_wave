class RegistrationsController < ApplicationController

 http_basic_authenticate_with name: "shre", password: "123456", except: [:index, :show]

# to show all the datails in registration
def index
    @registrations = Registration.all
  end

  # to show the datails in registration
  def show
    @registration = Registration.find(params[:id])
  end

# for the registration page
  def new
    @registration = Registration.new
end

# to edit the details in the registration page
def edit
    @registration = Registration.find(params[:id]) 
end

def create
  @registration = Registration.new(registration_params)
 
 if @registration.save
    redirect_to @registration
  else
    render 'new'
  end
end

def update
  @registration = Registration.find(params[:id])
 
  if @registration.update(registration_params)
    redirect_to @registration
  else
    render 'edit'
  end
end

# to delete the details
def destroy
  @registration = Registration.find(params[:id])
  @registration.destroy
 
  redirect_to registrations_path
end
 
private
  def registration_params
    params.require(:registration).permit(:name, :address, :phone, :gender, :email, :password, :profile_pic)
  end


end
