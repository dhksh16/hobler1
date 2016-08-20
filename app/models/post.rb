class Post < ActiveRecord::Base
  resourcify
  include Authority::Abilities

    belongs_to :user

    has_many :likes
    has_many :unlikes
end
