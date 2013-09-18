class User < ActiveRecord::Base

	has_many :products, :through => :reviews

	has_secure_password
	validates :email, :presence => true 
	validates_presence_of :password, :on => :create
end
