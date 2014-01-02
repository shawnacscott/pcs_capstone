class User < ActiveRecord::Base
  rolify :role_cname => 'Vip'
  rolify :role_cname => 'Ally'
  rolify :role_cname => 'Admin'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
