class Ownership < ActiveRecord::Base
	validates :userid, presence: true
	validates :itemid, presence: true
	validates :swaptype, presence: true
end
