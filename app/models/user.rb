class User < ActiveRecord::Base
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :password, length: { minimum: 6 }, format: { with: /^[a-zA-Z\d\s]*$/}
	belongs_to: user_role
end
