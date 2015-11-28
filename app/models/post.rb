class Post < ActiveRecord::Base
  belongs_to :category, counter_cache: :posts_count
  belongs_to :user
  has_many :post_tag_refs
  has_many :tags, :through =>:post_tag_refs
  validates :content, :presence => true
  # attr_accessible :category_id, :title, :content, :published
end
