class Post < ActiveRecord::Base
  resourcify
  include Authority::Abilities
  belongs_to :author, class_name: 'User'
end