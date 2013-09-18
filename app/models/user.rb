class User < ActiveRecord::Base
	# attr_accessible :email, :password, :password_confirmation, :name
	has_many :reviews
	has_many :products, :through => :reviews

	validates_presence_of :name
	
	has_secure_password
	validates :email, :presence => true 
	
	validates_presence_of :password, :on => :create
end
