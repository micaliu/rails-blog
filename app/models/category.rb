class Category < ActiveRecord::Base
	# after_create do
	# 	self.posts_count +=1
	# end
	# after_destroy do
	# 	self.posts_count -=1
	# end
	has_many :posts
	
end
