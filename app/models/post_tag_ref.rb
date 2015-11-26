class PostTagRef < ActiveRecord::Base
  belongs_to :Post
  belongs_to :Tag
end
