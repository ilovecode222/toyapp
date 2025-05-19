class User < ApplicationRecord
	has_many :microposts
	validates :name, presence: true
	validates :email, presence: true


	def details
		"Joined on #{self.created_at.strftime("%m/%d/%Y at %H:%M")}"
	end

end
