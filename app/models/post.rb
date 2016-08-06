class Post < ActiveRecord::Base
  resourcify
  include Authority::Abilities

    belongs_to :user

    has_many :likes
end
