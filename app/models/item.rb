class Item < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 3}
	validates :description, presence: true, length: {minimum: 10, maximum: 250}
	validates :price, numericality: { greater_than_or_equal_to: 0, less_than: 1000000 }
	has_attached_file :item_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/missing-item-image.png"
end
