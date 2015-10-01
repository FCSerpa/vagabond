class Tip < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	
	validates :name, presence: true, length: { maximum: 200 }
	validates :description, presence: true

end
