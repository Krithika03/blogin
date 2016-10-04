class Comment < ApplicationRecord
  resourcify
  belongs_to :Post
  belongs_to :User
end
