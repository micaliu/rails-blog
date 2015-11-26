class UserInfo < ActiveRecord::Base
	validates :profile, allow_blank: true
end
