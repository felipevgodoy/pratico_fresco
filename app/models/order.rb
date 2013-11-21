class Order < ActiveRecord::Base
	belongs_to :user
	has_many :purchase
	has_many :item, :through => :purchase
end
