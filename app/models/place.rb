class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, uniqueness: { case_sensitive: false, message: "This place has been added already." }, 
  length: { minimum: 3 }
  validates :address, presence: true, length: { minimum: 6}
  validates :description, presence: true, length: { maximum: 500}
end
