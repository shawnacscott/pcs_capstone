class RelationshipsController < ApplicationController

private 
def user_params
  params.require(:email, :password, :password_confirmation, :remember_me, :roles, :roles_mask)
end
