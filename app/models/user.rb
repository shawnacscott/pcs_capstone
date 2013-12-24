require 'role_model'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  include RoleModel

    attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :roles_mask

    roles_attribute :roles_mask

  roles :admin, :vip, :ally
end
