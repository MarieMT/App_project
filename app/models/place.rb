class Place < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    
    geocoded_by :address
    after_validation :geocode
    validates :name, presence: true && :name, length: { minimum: 4 }
    validates :address, presence: true
    validates :description, presence: true
end
