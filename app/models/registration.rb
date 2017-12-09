class Registration < ApplicationRecord

  validates :name,:address, :phone, :email, :password, presence: true
  validates :email,uniqueness: true
   mount_uploader :profile_pic, AvatarUploader
  
end
