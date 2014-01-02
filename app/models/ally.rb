class Ally < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_allies
  belongs_to :resource, :polymorphic => true
  
  scopify
end
