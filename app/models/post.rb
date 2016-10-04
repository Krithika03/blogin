class Post < ApplicationRecord
  resourcify
  belongs_to :User
end
