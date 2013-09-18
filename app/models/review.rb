class Review < ActiveRecord::Base
 attr_accessible :comment, :product_id
belongs_to :product
belongs_to :user

end
