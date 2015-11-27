class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :post_tag_refs
  has_many :tags, :through =>:post_tag_refs
  validates :content, allow_blank: true
  attr_accessible :title, :content
end
