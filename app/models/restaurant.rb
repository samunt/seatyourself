class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :category, presence: true
  validates :capacity, presence: true
  validates :open_hour, presence: true
  validates :close_hour, presence: true

  has_many :users, through: :reservations
  has_many :reservations
  belongs_to :user
end
